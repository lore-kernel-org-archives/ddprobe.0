Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3E12857EA
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776485854; cv=none; b=E8fAhoW9pQ5dLgEjYjzCp6Z3YjKEY4Q+Ox8v1F1Ih1fxrHl604pCpp/kFn0ZKmtb1raMKxupIc99lJCnvZtD/bsWLpfPJTbAOAWKvU9LmBZh8qDuAR8fBCMJizaX9sALw7pUZBs2x1lLqjodXexY9cNCweSaCxreupsN11LJ2hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776485854; c=relaxed/simple;
	bh=2JAuGMA0pN1bJ5+gv92gkJhly56kKbC5gh8xHlUxEEg=;
	h=To:Subject:From:Message-Id:Date; b=rok8vguLLnGcbBwYuP1KetZKmJxyXTmaDvK8VH041AxD1bCAPZdQ+bv33PU+srI7noahgwp8KTfTTvwJ51lACa/Zf4CQ7L339D7TJ4fHfSAL6mI3paMriRrJfRGppDxbjn+jHGvIylkc/JqwEnm0bZWpMDV1J2a5NhG0TmgpdWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKqWiGHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKqWiGHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64EEC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776485853;
	bh=2JAuGMA0pN1bJ5+gv92gkJhly56kKbC5gh8xHlUxEEg=;
	h=To:Subject:From:Date:From;
	b=OKqWiGHGjeKoRhLS1ryXkFeq2acXz6SG+4hprcxTssLrWNM+CAk4Twv0KHWUDDVXM
	 rWnFtztZsGhEgIzUAIhGuTaxPiBMGfInVlS0ynjiukIIaCVDEZHMIG/JUfvtdEGlBS
	 fooLGEmFmqFaNBYVK0kuPokZ3BH4M976FnOh1Az7wA3mm68XT3DlH7TTnz4ciZQlx4
	 ld6+Dwp4todJJruXSXrPiLH9My9ZmbtwQlGnqxfgbTECUKouiJWwN4fh/eQcn1ZKKQ
	 OwkVfoswBl+knCCmu7bFbaYXanhO49T7Nel5DEj6AF7jrlwBR1sDt1lK8vg5A8DuyA
	 2RWvM8NPkKvkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC05F99C74
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648585373.1927.17350128553014052354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f18c0ca43da85cb42ec0c6566f314815b538dcd75efe92757fe0b45c78dd575
Date: Sat, 18 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776485853
