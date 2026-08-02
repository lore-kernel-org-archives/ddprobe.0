Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553B0489888
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785657634; cv=none; b=IUpOvkA8jJqwISkpIUYMjyd2KMYPagSA4qcBkbdVAndGJSYRD6qLTAdasG4gJ0dMYSSbU4uy1WVmpbpSB7LF55GAOmCMeGpzFgy/KnqJtIFkNnnAHGMBqsqXbiw+HOT82g+JR6usOm/Df/S6sVP/tq/rN+9+MMkpobyjfWuklac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785657634; c=relaxed/simple;
	bh=P0BblIRvkLNuVDU9ifmmBGBiNbP2sX/BVCu/HONR6oM=;
	h=To:Subject:From:Message-Id:Date; b=kKbEOmoZkhE6WEsBzhbvz79RgCCINFP/3UKZVD8w+S6LRiPuUq5vi+ureEpJI7nCiMtFP80KMrYq/Va8O/+wulyZVfDV5pkiuiONHpguk6DMeSA/c0K1nXl7Cxsxvz/XTogNvOh2SnNJXhHpoziquwoicbfSDVHc548Tr/vb+5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgyvCtCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgyvCtCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E0BC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785657633;
	bh=P0BblIRvkLNuVDU9ifmmBGBiNbP2sX/BVCu/HONR6oM=;
	h=To:Subject:From:Date:From;
	b=hgyvCtCL46VtFkgIE1AJKTLTNoC/6FQ0w/LX1Gm/GarYstcDzpMUlbfHghgEmffoc
	 OAm0WbHKsQQzJz8AOSY/+b1j9HtysKX8IdUnJNuZf2LiX85ZBSPWICqY1tF5Lj/UWo
	 79bDhCzi3BZ2hIVN53C8WOk36ZTFgNsF3bEuaBFoDBJU1HNKbmqbC2KSfHQODSBYhc
	 qGQg4Ubl5vS/rMJRDsKnoXqjEIZrHC5UtYss9aqVgE74fWSuxJ6ZT6PEhI1AdLXDc2
	 k3ptg/N97NF71u3/ncv3UPME0mFZxC91ptlZd4qJYaGUoTOwWraHS9/6+9pR+AxXxc
	 K/DLmOlEA/D4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB17CC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565763368.11739.17144637957194221793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816b05ccffe71e90a69faea8c5713ef90d27252b6e146de4d0e263d2b4a07e21
Date: Sun, 02 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785657633
