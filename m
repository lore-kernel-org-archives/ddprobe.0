Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297D131CA4E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783360114; cv=none; b=undoeEBnrijHenYn0jWgcKnJL98/sRZPBIwT5r0/1CBxUuXNYGkzD7x9BBrl9i3cHLOnrPvLNkEqPdiEL+m5qR18DBi4Hqu1xkneXCP24/zhq0CObY2tjJdHp6EuHWQC+Cqxs1rG3Q/EVBxVFKSabhfCt3drTt+y3TDZq3m4WQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783360114; c=relaxed/simple;
	bh=vn2wH2g2ABuMqRzTP1ihlskaO4mi43ig4a1FvB95gJI=;
	h=To:Subject:From:Message-Id:Date; b=QOa9f6NfjoA+cW0LfFjMTinKYWl7n1lLDklYvyiBIe9Z5IJRWmq89xLiUK6wjRpzGcWF2fqDXhcPMa3VnJ4K7X83FzPt0dwDQkiGmYNzduCB/PXPLZp21ZwDJIEDWeukwqYYH0zTr2qnOGI2AIgQIcLZbjx2jAK2/sGOfrsleAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfhH6Wpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfhH6Wpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D545AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783360113;
	bh=vn2wH2g2ABuMqRzTP1ihlskaO4mi43ig4a1FvB95gJI=;
	h=To:Subject:From:Date:From;
	b=qfhH6Wpc6YAJEajs115hrav7f8HF713zG08j1vONa/+hjNl1UemKKhO+jCPLL+t8Y
	 NAgLhxNkhIYefnphaZVzHNoGyBoGk3m5tvbSFqAG2j9USU1Om0HISCt2On06v/WxJ4
	 daxNLh9SOHnfA0l3DIvij63XboqJAKHOLwukfYV59FSkqI9Wydo3nevgqWafQ3XNlV
	 vezgsRwEz+kCv9vtB9Cdadl7PrIJ6vCur2k1csztvmbQ8jwGNTfx6nDPcWqLrc1WeO
	 S8QmA5+6/UbEsBz9SebhXZ+HFdKKv/9Ni/QUn7Xmc80zS5PoT8XmQD9MEigEmySx5t
	 lSnH8SpuPDXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B218BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336011369.12258.11158324726632300358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641ac16544d961d536c8f75589e17f7f21d1880e8f27f007690824296703124b
Date: Mon, 06 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783360113
