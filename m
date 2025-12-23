Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16348883F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766470434; cv=none; b=bsPI5WqvSnbwaYFEX6Jg1kJgXnQCd3RpOFBFlGK046KzQf6DhhDDfNVe5+9lZOBe+U2OQXAfWkGM03nvSWzNXiQUlOMIVNhZBv9xThT/QDUCWjPaNnStxrIRlcHPk46v6lp/rxazT8mMxBmPi7/gt8IDX35HOTBR8zDfAVyyQys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766470434; c=relaxed/simple;
	bh=tbAvQYo4g5KXSVA2hqSuLstUGgTur6qU8/6X/fJGW9k=;
	h=To:Subject:From:Message-Id:Date; b=mtAygfZbQI8eb4CIOWK3e1ajpQ27cdmMk5inw/FcqbuJkraki1HzPDRY+YDvNsSabHjUgznPrDSCsIfiYe9/n8TLhMmAV7HbhlzUyCdLdF/Kx7Yi69shAj5Kla71xTJNrX+TF8+gIA9g725HXJ/IfQsDu56wlS3ikoddCFIlP4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkV9Gl/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkV9Gl/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FBEC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766470433;
	bh=tbAvQYo4g5KXSVA2hqSuLstUGgTur6qU8/6X/fJGW9k=;
	h=To:Subject:From:Date:From;
	b=PkV9Gl/CrUvDhVkUViEBHlTO8mzwieZNtQQISIVgL/DL0RqqFsHpgaEbDG/5qnxQl
	 CdDo9biavS+5Pskx5YsCJKzN51aev87Z1gViDE0zlJFctl8TYgUFUmminJI28yhRZ2
	 wsqg2ulKsb5pnt4Qvc7jkJVsDITF68dGf4Y3yy9ynLVX8gFACYxqJ05NgMzynOT5p6
	 MTN/+wYo8T02zszijKGly1lZKpdmiAuUzWXtLfsuoz6wXOPKtf8lSvXD2mDK+17X9Z
	 zua9mJ4Z4qXzGO+Re48wsG3UY5T7avL+tW71qdi1AHTrnFRPDuMfFzAkxenK7tOuE/
	 bGxCfe8nC/H2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F018E6B27F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647043357.31302.7696620615825383232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98f8e536544cd4c9c314f199d086ff28fcda9df45bf432c770435d3cae71683
Date: Tue, 23 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766470433
