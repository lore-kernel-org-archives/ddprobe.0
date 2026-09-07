Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6E534D4CE
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788818434; cv=none; b=SDH71xi2g1ztGg9SOxj2AsdGdtktWKiqxBiWWFtop5Q+NfiF6QyiJvti0n4R0PlZnWBBJrWX+MBRl3v8honElS72MvfjdCEh0s3n/3/90rRH35XK7c2RyMZib6DVi9T6pDKvXciWDSllfEErbUmK1/PctKQUrqpdDsyY2DChomw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788818434; c=relaxed/simple;
	bh=v8va2mVnqr1+6gvDyu98M+SkfHQEUgtyHmsBR8bxmN8=;
	h=To:Subject:From:Message-Id:Date; b=ej8JLTTg+v6pjubAZAKDo4lQtn34YQswWdl6RnVSDwiS42FKcrQbqdAOv/pwgd8dOBR6iGTwqyhQfWqVyPlCHczgxBoYU64fWn7+TEcSoct9QP79a527M2rmADu7i+nfLeOHTRlc2M/kn9Fzp55rgicgW4fx+lu+bjCBaG0OATw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwcnTOGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwcnTOGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7921C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788818433;
	bh=v8va2mVnqr1+6gvDyu98M+SkfHQEUgtyHmsBR8bxmN8=;
	h=To:Subject:From:Date:From;
	b=TwcnTOGMKgMCaI2EyrZBbMt6pt+xbZUA63Mvu3JULRw+ASsGGPqqgN47JFWDatCnB
	 71TFh/tjDIG0Ex/H1KUVDwj/hyRkWVeads0E+WS8B0hm93+bje321T18q3fZMPur/N
	 Fks5B6M5uKfG8W4M+bTIi+oruDuM5FvOVld5uZBvx9RACml3w0qXwnhMaHSw8GsZSf
	 Yz7NKE7Qx3YJ65Gln5NiJKdvlKhsB8fETnd8ptfqcg00BIi4N6yYlKszdx7XS9QusH
	 My7ZTMwUprgF+h6vd61yHjjt2drtNSSeChafMUo1PBSD6g9iOCvoO7y8crqFsuffd2
	 y4q9HNkCjHJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CB2C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881843371.18032.12947192137568128371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbb8b09575e8a4e78037afe098bb3bd352a03dc19ae76e212e74c760ab576eb
Date: Mon, 07 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788818433
