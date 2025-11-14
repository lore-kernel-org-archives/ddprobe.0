Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9C61E1C02
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763152194; cv=none; b=kSYabgrls2R+zeBtGvNV5H8KsRiYYec1zKRmuyci6z5JvWX8BEufYMbYvgkbuIZdUFK1w6FPQvl5JZGINLwyalD3WmeAq45ZRQra345XWQok4982SNhzoDe3VMYT+yYnTEpNmDIqDBHx9R8exNV45NxtNHjFJlRWycD5ckaAxhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763152194; c=relaxed/simple;
	bh=K6K40OC72mze/gsZeze+tfr8w+nEr5FrZWgx2NVZHU8=;
	h=To:Subject:From:Message-Id:Date; b=Vuo0roRJKTNOArmFUjSWsgrpL3otwiykXWJn1+va7Cx6me69bWbW/JyMb0DW9meT2iRRAU9FvmKMIUpNi85wk+qWcwsfFLeW7wVyRPNXvCwkikrGsnNG9zowiwBmENgNU+00SF5ImS9rq3PYo392q7YUfBme58x6SdtJDx+mEPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzA2/zYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzA2/zYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E78EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763152193;
	bh=K6K40OC72mze/gsZeze+tfr8w+nEr5FrZWgx2NVZHU8=;
	h=To:Subject:From:Date:From;
	b=pzA2/zYQ+6yFQDqKLZU4tQ/EPngxddcc7oz2nBt95zclFEN7DyrM+4E+iPVqxKuva
	 55WTTZGAih3naI0UZ4Vc0vMxg0nqKEOQA56wYeQp+nHRloWDwa1z+ymueDqOmcTFRZ
	 jykzJ9b6Fnh5pWJNn3F105o36oyZYh/mECAwKISlffhDXqJqkzdfjViQTINnNE8lYO
	 mu7xJApxVypKNpB/EVJCW+HuAR/onq8EBMyFvRecXVbdFDUojwJuL12fG+5d/+hDRb
	 V9Y0zVgjs0qLYDT1Tt+QpqMnC3lTN0q2vA0FssekdZcVnLJCEws32Hmh+H0m3bO4Vb
	 POaN37SJafrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE4CEACCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315219357.10157.14632941575323869886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56a10129d93c092e9b1712322d8daeade37bbc2cca65960165b88eab7579939
Date: Fri, 14 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763152193
