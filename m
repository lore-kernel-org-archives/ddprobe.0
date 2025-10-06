Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DBC4A21
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759709994; cv=none; b=PaYHfEp1NpJkMRyMbY3Gatx9EelHZjnx+S62hBJqTgi72p6wQL5U0DiJVh/3+eFfeQ377hwPN98lV5urNsjk/dzImgywBpUKtKr0MU9XMU7ygT5mJdJy24/J3e1qbE4ozNApzl7/rZywb0A/AXKT2uPgVpQ+a3hgvKQMBDfAq8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759709994; c=relaxed/simple;
	bh=qPEcPpfAFzqdlfXBzmtw1fV24/IyBpynG093W/0UbJg=;
	h=To:Subject:From:Message-Id:Date; b=N0+WESQoLhrhPfi1WRUKTnUdoLPKaZbbJ2B4EBqo+VlZEmpkPfp4luwv0urIN06vv2nTFxm5wEX5tXbTCTC6athSSCeu1+FvU6U3IPan12ZqzWSKZi+/dMZqM78BTZdbzbaPsU4F/jt02XXNbYZ9Ahd8Rbir4656JwINkeG9lqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBnRdsxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBnRdsxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E36C4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759709993;
	bh=qPEcPpfAFzqdlfXBzmtw1fV24/IyBpynG093W/0UbJg=;
	h=To:Subject:From:Date:From;
	b=DBnRdsxtJv1bIpP69D8Y4+W7vm2BTGBIAdI9rfO9ZvY1MngpP16NlnJBC0vuqiAhz
	 phnTQ0eSXa3blekizWSrxO32+WapNq5bF+OYKNLAVBPExeW5e5zJJOYgdM+WLU6haB
	 U2SFOe7hyYsbQGkDvVsnZ9FmxUNrd2Dej4ZPNKW1X2Hmkrxc+rmRw3GkExQwxkbp7i
	 nYinnW2DeZsOmOKFkgTKqKUaLHIjYYe1yBWMF46O66HUMd/qepTqZiXb8Ltdhj0NuK
	 1ooqo+Nwce14dLdQYr6qnvGqluIf47BPRHrcvv+whpjTZcQ1/19Y1pzHJgo5osZ+a+
	 NJPB7y+h04imA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91061CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970999357.2884.15688380094788276810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3bf8585b10b3aaf679811f525781732ad497f66b3be90fce78a3dd372ad4fb
Date: Mon, 06 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759709993
