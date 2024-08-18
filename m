Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CAB1401C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723967154; cv=none; b=KQcPaNfLubrd2X3YJBbCuDoUHULu3Akbvn+4nPEZkx89sJJ/N5h+s3SFnN/gVpmnlW87yI2S29uIgovGtXczRX+Vn1QlnzKTq/7SKQh6XSCMwRTbX0JtDuODr+iZ04MCtlg4LddJKTfNPxcmN8oGKPhRhgq15VOps835Rz9w3RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723967154; c=relaxed/simple;
	bh=21VvhVl/9yQ6X57d2ti2/oL4gHho6o64OLlox4WK0nc=;
	h=To:Subject:From:Message-Id:Date; b=bzALFRoYiTPK22Ce6sermYyk3/bUZVMqxwQe+h6mby6D7MSD5TMNBf1f2201J3pQY22hw1lrgYoJBvACCWEyed6Mmx+4kmK8LVgYVa3xEm6kU2TbVHR/K8vWFxkd0uBSiGfyPrZp+RVQUgv3Irnp1YJV21DawG+CdVpixRxKULo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpV1jlNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpV1jlNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D0FC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723967153;
	bh=21VvhVl/9yQ6X57d2ti2/oL4gHho6o64OLlox4WK0nc=;
	h=To:Subject:From:Date:From;
	b=IpV1jlNM/1+RRmqdIOnTd3a6JT3U07FmRYh+YderGzPqhuNCkr9iMy/9QxyFpg75c
	 6qzuvG8vUcmSLnawFc/OVg4b4kEaVy7TtEZE0kth1855HN9kG1q/HdEUy3NjDbtGF8
	 rT0vremeWXVjahD38Gu62nN9USPtDcQA7pATDj5Zt+P0Hycn3Al+XjKfDa7UjNmhEj
	 5SM/5UUnbbL+7ZNAY35dkSW+/TZGWp6DVpK2+HOhy8uRyzHr/C/+2EwupG/CZQPWal
	 P4ikg2C8VAsc3qLFMPr27UABXn2q4eiKhBap/8S5DiYW8xDmqmpIpZBK7hmYXS43ad
	 KbGMw2gZ36h0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EADC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396715358.19178.10131566043117024395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d51146f8cf6b95581b4a42da47816edc8c816764da15cb2d09822787b939ea
Date: Sun, 18 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723967153
