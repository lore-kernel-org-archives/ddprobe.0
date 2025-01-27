Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3654625A638
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737956154; cv=none; b=ns0s1LaOx4P2w2gBVTx+4vyJJsiEt2kczKlKtWMHjNXMZd3hOum8zekMTlbLj0djeMK5bbjHKlq99Tdj+XwuiycWFz/wNW2/BXKwbJ0MDdDYiww2vZk9nnpeprkpH7Erqsm0lU/Tg9Hd1VAm7StOBc4iUXUqivVMD8TSfKv83As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737956154; c=relaxed/simple;
	bh=xHOfaR7RFO4HxQnnw0kph5sGgi+RvuzR04+g4f8VEvk=;
	h=To:Subject:From:Message-Id:Date; b=QSTIGrPfhxwUtorRtrNEv2HMxT/HaK8znuMh0tPHptFkjq8ndD1pNYaenABwP1CvAgDI2mpgYpemJUHUYYBdjinRRJI+cTNJOTG8c7hJZxie2MYwkTQNWBDo9w3MKvYgsywi/J+VhyC9j+DhvGU5bj6KidyvrY5nRgVoMY6JQfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgDYsHjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgDYsHjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F8C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737956153;
	bh=xHOfaR7RFO4HxQnnw0kph5sGgi+RvuzR04+g4f8VEvk=;
	h=To:Subject:From:Date:From;
	b=QgDYsHjN3YzMBb/RwYs7lHLzGyxJjUdT+j4pZLfNTSNy0EnI6hxalwqeO19YD5nYB
	 ch9VF3xOkPoLdKZk7vEFy4aUy8a/RPJc9D2szgGsRbyiK5KY2ONREY/G0xb8dMNZFK
	 P7TpxHHSPIJ+C5BCXsOoBw77uum1FcRPHx393NAYVT9yu0SLEBkAWqdzAKvglOMJXb
	 ZVkMuZa0QTWIUnNL0yqjuugjE32+EFBZQw2nZRJVmrd0PleZJLaVmpCVjvMk7i66/u
	 3hqg8Cxc0zCmbt9cudIyOd7rawRhP0tNlqbdewdFI2o1EEV8IGXjHbtsAyiFslH2xR
	 mTE/+0NjGayPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ECC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795615357.23680.14901356256149116674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4684e76cf6076856c1b02ca053ff278a636ebaa51daf19b117b4f23797a9ed
Date: Mon, 27 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737956153
