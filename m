Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189012D2382
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763671914; cv=none; b=Iv1pPmtp+j4Prk7rb6Y0rUu/88x0X2RWOSyoo181FXig057vt8CEZdEeWW9oskHtol4wc7/UFGiyKGX267KFzkbhbcT2p2LQAwzZbGP3Khl+CI6Yy+cGHYueURrSUr64Tq0k+GsNfhTc9BD+1QVOgtBhLIJ9ImPpzNwCxNisvOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763671914; c=relaxed/simple;
	bh=ihiwp1SGenmSO9XfDC0rDqv0yxoI/Wk+DsPefIodB6U=;
	h=To:Subject:From:Message-Id:Date; b=N98vccvx8bKnk3yomLoN/oXTHWwu7ub+GHd4ATDSQeHFQ0hti6wV+e442Pd//7vKx+ZH0PcsQk25joyfZPUcNjAaWonxxwIebwi8jw5FZ29uPV1ZrU5HHu+9E1kgeOExAr0+VHZBQHdIRliipl/5/WMtO141uV7EzpEQuw94hx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs+8edYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs+8edYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2430C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763671913;
	bh=ihiwp1SGenmSO9XfDC0rDqv0yxoI/Wk+DsPefIodB6U=;
	h=To:Subject:From:Date:From;
	b=qs+8edYoytPpqOSto9R+6Ay86trCt4ACwTTQv3NZiJSvodcqKeqUeBv8cIanTj6XL
	 FEj4iX/eXP64K3RMQNIbZTN/rhU0aHXhgTMmlw+vBtLxfipyvhe0kD7uOqG3TmfIOM
	 Tl1ud1rJPlRmyS6S0V4QBy7rnuowEKeK4u19oYN0uOqvX6CR1mOCJWOiKknTt2P/A5
	 azW8fiAhAUE39EIiIhqm9PhppHD+KsSACuaMqlr7jy8FfDdiSu57ps/1CvFzTR66dC
	 kIAiFI0BVw0yajT+ACrC+Ame6uUx4MTqO0ce7jNRwEVF7qdlUp4QGrC3+SmFjaltVG
	 Bq3ojv+tsOo/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93092CF885D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367191359.17658.11891050783387408429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4189aab68b544fbd114ea86de0a041182eca39b9fb3cfbc47df017cc5396bf
Date: Thu, 20 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763671913
