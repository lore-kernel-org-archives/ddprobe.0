Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2003CF73
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720014323; cv=none; b=TyMCjxiZAvodHXmu7tNzlobuDWJ4oBOTQRB2dx1A0wWvIwq3+rS8Ifi+31Bqu0c3M1NtVxxVgEn8xR4NASwv6Osuu71dYwXWnECRZIUj+PwZMzKFZoPnfiKJZ7rwkzon+7A/oqUxImzxs36biS4ICCDiVBP+bJ/j6/RXfwGrM9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720014323; c=relaxed/simple;
	bh=ghI3ClYkNIfWLiQ/0Yww5ZvidVWrQs1BicE+CIPcz20=;
	h=To:Subject:From:Message-Id:Date; b=XmwfPlVPG/Zr0v9sfjHmhPC/lTW2poaSTFhOM7xoGA4FtkMblc9NpecOsKmtILfl5IJFbee52ygyab0r5aOu8wr6TuLDFVzXAnQyHEb7/PpEDg4jORhPIk/H0Q8ihM3sjxXpsd1cMvBG1OEa7Ucebi8Z0kgkf4N3FFW+GV5c0oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWr2MCk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWr2MCk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7EC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720014322;
	bh=ghI3ClYkNIfWLiQ/0Yww5ZvidVWrQs1BicE+CIPcz20=;
	h=To:Subject:From:Date:From;
	b=UWr2MCk8WX45JBzMauuoN0JwAxwJbH+OZ0tf0GqyWeAxBTvuiU32gAgr3J6zsBxFb
	 zUNYCf+QYeWhXquGX9xFBQdmQDs27I37vApZ8Wqy9uxRAIIpj9nLznmxbc7lMbd44H
	 NnxAayGnx4dzjpYGauzofKSXQpHWVdSYUnKgz+uPy9SoeYxAOR60oBpl7UXB/B4dU+
	 V+JQUUsXtRnZLg2Oh+7adsWEN4g6Qj+GHe/vsoRM8KTYcsAJyPslj9RJZwByhCUiHP
	 UI2zO9xJm4my/4KC9EyFOAJpH5uUdt431LhW+cl1haQoM1ksEHOvs2pnMfLJqeJkEF
	 0rC3XNhd5YBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E29C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001432278.2220.9241629123914509043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dadb25b0e63435db7f4e5e5637d5a4167d1f577eab4de0dd977313bacb8fda
Date: Wed, 03 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720014322
