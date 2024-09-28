Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42378125DE
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727531754; cv=none; b=ugzXFuZukPOmqoxS5FIATTLudkBP+aAccxeeS+9TrijNASCVo3uarNxA+95n6EEuHb31iqcCLl4jwAVQirsH14VrDYmcu+q156lu+mItmGhULiqaakPTNLmrTBin0BPtq0oeco6bZAPRU+VsGKVLd+x9jVBmeGqGDl0tPg6Zeg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727531754; c=relaxed/simple;
	bh=/qf+YMcjo97oUlk5UKHQP+AtsVWKNghBVn/y4pWYO34=;
	h=To:Subject:From:Message-Id:Date; b=E6D2IZKGciGpODfjqffCNvMQdRQQI22ZXX5LgzKhhB4p7E0ulqHjf6wmVavwDGzRlIUgNT5o7zZKKC1S5OExp3ayq7gK6L15GoBJRduMMm3zfeGkOUM9qdfvVvelvmO7LUYufo4h/quMbOdCPuI+C8wGfunIrL6vrR3/T7s1LQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7m7cbfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7m7cbfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8BCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727531753;
	bh=/qf+YMcjo97oUlk5UKHQP+AtsVWKNghBVn/y4pWYO34=;
	h=To:Subject:From:Date:From;
	b=H7m7cbfkzsaW+QtJfB4nGUjAWimoVmONO2LYwbuuxkuF1Va/0xQ5G0p5DaJgn/uob
	 u9l1MMc+jVbq0y3gzdgoMChIRn/pey1wiTjOLduI4mG+aAXL8CUru+sNdX8kcxAGph
	 83lmPjmIMfjeiHxxmliwzcEot/BolIfAGE/j4od7XUZF4/pTTA2RPJdOz49lTx2EJn
	 47XcdALGGhdF6n+RZOg3RHoGt8EB31SWBwOiqaTtVdBH2lOwvVeEnYZB/PwTpS9mO8
	 EulwVigBxOxLryCU43OCQeNRwWnROcJNjhHfoKrezeUgihzY8wlvHo1BBZ20oYvgAK
	 xF5o/apXphqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983DACF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753175359.26578.14421413543862576316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2eeb15525012c28cd0b75c627252170898e06eb29e7e3bd463911ba98c8bf72
Date: Sat, 28 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727531753
