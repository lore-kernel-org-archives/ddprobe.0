Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16D6882F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706840297; cv=none; b=Kb0bImXvYERsUUCX0ofpCWMzl4a3raY+WxXhOZEt7jwN7GHl2D/ZC0rucvn+W54uu37wfEP8uliu3tPkXhI8411LZU62aawh+U2ze04RNS+JKWXJM3JItSbh1Izi94vr0O84BEgvzANfKxSz6B6/X8LcPjtKbLwJHuTpSwgP/io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706840297; c=relaxed/simple;
	bh=tTFkvaU7wVApuozJu+AQTDY7irI8Dsce3O+ygFITROc=;
	h=To:Subject:From:Message-Id:Date; b=UwFVq/ZQoBiwWbawZXy/270cNGP61VXiJE2wTyHgHzZrFPK4FE2OREFZToOWWDwTrkEBrK3x4GFBZSkfL5kcr0YGP0sGlZfuYzv5nZ3wkRinTfG/5DXXkz7AJ6hN8dIx9IZd+8DPueak49tEirSTGla7C7YO7PBtGPbJDjGfYsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mm4xYIoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm4xYIoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A84BC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706840296;
	bh=tTFkvaU7wVApuozJu+AQTDY7irI8Dsce3O+ygFITROc=;
	h=To:Subject:From:Date:From;
	b=Mm4xYIoyNsSgjfbl13myRvE/O0KyIovVXtY3tERBfsdydRx2TtTn3jI7/zgb8ucUi
	 a/LgU4BIOfGSaO55yESSclDUPpLbETmWyH23nJlJUsSE1PS0OwM/6AtNgKFPiiFWXe
	 RFfu/mBHZLLwug8jKxufHfyTxXStMvM1AVTrWs6IxHqACU1bJdBkrHSr8jOo8K8DWe
	 dct9HO4PLi9WF017wGD7pNiCFECj0wh5eWVWEMtoiqDgg9U9ajfSmTh3FHxWCv8xTr
	 E6ccv5YtrbYvdgjxw/e+IvbEdG4mY4Q0fliUaGvnLrF9IQuxa0gacYNeMeBSH6Brd5
	 KuyZJ2KWhNULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D6FC48286
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684029644.9053.6681828092191812512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfec3453342406e4c498338b5a751882df79fc63e22372cfb85867319d0f48c
Date: Fri, 02 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706840296
