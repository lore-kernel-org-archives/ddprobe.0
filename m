Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E27A41C64
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731465354; cv=none; b=g2muHgAHXnzg1l8Cmq50/Bjnt2egz7OKS+9E85ZB+GvgD9qGFOLKY4tpJOCUSlRAhKRryNfLTNnZxTH0+tW1iKsc4+C9M8ORVsle9Q9h4gdy7iIbBkHHNqPQ6xsthDlhh6he7rkvWasrYURYopireXyGpqwLcgDMdSIU8Ji04Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731465354; c=relaxed/simple;
	bh=+s4G8lzZSRxT508s7d1gXT1m6P7Vm0P+CdcbMJjjsBk=;
	h=To:Subject:From:Message-Id:Date; b=aOnJ1R7I42Wzqa0kQ2PVwf3HHck5p9ktO7ZqdW9X7vsRR+QUf0/RShM6aZd/EC2Th/t9GU0K5uIoqS8EqMpCUKKXjzbOiny9G9Iqe8FzsIC9AHroBqBZp0w7pdF5/p2bS2hrBFT6pHeYunqv9OvTB1SkZoXV0YurzXiXMkrZtGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHpYgqSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHpYgqSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF6CC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731465353;
	bh=+s4G8lzZSRxT508s7d1gXT1m6P7Vm0P+CdcbMJjjsBk=;
	h=To:Subject:From:Date:From;
	b=oHpYgqSfmImhYa1Rfx24+Vx0ciqiDm4xI+QqUIjJ4v/vFhqlwBptqU5sJpF9o3Xyd
	 M1g9eFDOuB2c2Ji110HADhMRfpvwo2gg/qqtdVR63ljtQm1XVSSeo1y5+NOpn4ELc+
	 +Yz0JHfP/IMngmhd9I5EVTVokBYYcYt2pW7gb2jM2e3vtpcp08BnAWPDgG4aUMYVCW
	 kVzYdrvbt6u2xgItKTj1KaylcIsmNCpp/nEYy7BLtd7+zLIR8m6zmwyBpyQR7Yacw/
	 jaFDhAk41wnrBXBHXjTbb2zYcOyzqezbFKnFNnCVRO3iFbfwKsVIT+yTCYtBntpqTq
	 uYRTZzlku8lHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9889AD597C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146535359.31806.7910369794837045393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c5890ab43e4b0712c6dc8f66a0f6410afb8fba1398fb914f581cd8843a266f
Date: Wed, 13 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731465353
