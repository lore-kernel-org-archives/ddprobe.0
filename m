Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D421126BF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774702494; cv=none; b=ovgp9j+0DO4/7NRyZQY6uuV8dkXntRhX4A/fRXbqBGzth8zlCTGAh9gwvobrUasR/uCe5udWDRD2HorvQzFgnGA+6RVT37aYpSmbX8Sir8pRrUjqsLRCI+ODSuo0nW7gsLjgIBTPwDjfCAV1HfGjB+U+y0ggE7M/mgfrM3aVTHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774702494; c=relaxed/simple;
	bh=HtzATIXsqMohGT/BsFRMPk/SJhUZuTD8/TtYq14wUo4=;
	h=To:Subject:From:Message-Id:Date; b=nz2ak2yXj7FePTe8xcTSjxAmIqq7UvoPB/dBXQmv+vmt9T8Ky/AsDTYG7+Pu9IwkA4P2bBp2Z80n5MoYFE4PiVsjitz9WmjxE5096PX1FO1fE7Bej3LSn//6f+TqjLWN7lkKEe0iBD67Lxf2PSQ/nSJ+4y9L+RNaOXD7IKx/XHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOVpyBVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOVpyBVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DEEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774702493;
	bh=HtzATIXsqMohGT/BsFRMPk/SJhUZuTD8/TtYq14wUo4=;
	h=To:Subject:From:Date:From;
	b=mOVpyBVlLhiHjta8jYrCMbfl4/WvVClyTSxXRztKsKvA2WzAdh6Gqf05qQNBclen2
	 3bTPEzIoMdsu1c3ZYHXGW9gArZeS0lShhW8U7ZfThLHp5VIVpRu9NAzB5UKluUckFV
	 s89/uNftsjq8nueMwTvZ68u07H9wsXOvupo5FIq/vU3um7hjeKBkNhw6yIQoDxazSe
	 QA5vKhZ2rSusqHg2jMF8At8TCmzY3CARgd2KvWVNUc6dGi3zj+sIV2OvYE/WzqzCBR
	 GCDq3EAH+zYnq/HogWRCQWdmCGVLRCh7epvtZjqyTEuibTJlGPQTfg/gRIxNa+s9yM
	 RCJtJ7nvl07zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991EA10F3DE6
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470249360.21488.5966558567098374155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8aa05c56d5932924843aa0209f3832428595b54dd9a406dc85d2f3cb6578b2
Date: Sat, 28 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774702493
