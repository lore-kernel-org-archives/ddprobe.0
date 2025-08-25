Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7A2D948D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756116594; cv=none; b=BCMnglatN3cmp0qpmbz2ikGhDPhpDgBYltEihuZcGrPMs/jTMcFo5j97Z3bFuRo0Fel4QamQuf5/Y09ZJS0w7RcQJdCOoXS93IIizNjlXPqvXNUpoH0FvWbxSfGsRjVyDCK2GPZ420A0Dr/f5XCgK7la2k4Ox4nX6Ar9C49pyGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756116594; c=relaxed/simple;
	bh=775w9BS63KDOpdLEVp5P5GKjerbQRq6yF3lvLqwywVg=;
	h=To:Subject:From:Message-Id:Date; b=iiq/+SU4VG5RTbD1aWQlS9mAsACjgKvuZq22dViQ7FI3sItz2yUVj9PJSzP9pzpoGCBXp1AzZDiO5E0KKjmi9FE4K4T7ecEsicld/0u81/bW3eINklUn06MaPW51p9U18A1uyv17HonRINAbFrTRq5nCuuYjMjlW2RP1qfidCIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq0LLu9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq0LLu9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756116593;
	bh=775w9BS63KDOpdLEVp5P5GKjerbQRq6yF3lvLqwywVg=;
	h=To:Subject:From:Date:From;
	b=oq0LLu9ogk8ddnwZ/KPxXjGgWuZFowetHm5dye02M3++m3cGghq5DJAZpPyTFLBHV
	 o28jWp+ocd16XouKC7VnhdSngrdm4fw+JOuY5b67y6stsUHo6E1RiHr4XvIDTVjynw
	 fwlunsNjXCMUHIGY9qMOXfX/NC61EjxpGgcw4Tl9evxvBWMIuwgW4bZ1p4A2ywwAFb
	 NOep4O0qUgTCT2QFPuu3bXeq0zoCdswrRCDeUn7Oe/tWXFgcNylghbIiugGR3/trrk
	 8QPo47uqFVTsUBTEVL8X+Xm96MoU8lXF0g8QuZvzy1mffsHy5FyNA9mtRHpCXDsWhO
	 2XOUTCUiniKVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F483CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611659357.3774.3180192849496950537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8604188bfb095780eb00d7cf8426b859f9751daa5e53af0fcc1234bf765f5874
Date: Mon, 25 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756116593
