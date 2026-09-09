Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2405540A0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788972034; cv=none; b=DKoa22ZsL2FULSuZHy2jLTK/9Ou9MPG4VD+6qaIO52Md8SghXThHc0xZK4wuA1YQZGWw/W1KMRpaNL2RugfQtTy6WYi+u/6dHjGR+P/CVNT/AYeGUjZR+eDYc58tF02+oyryYmHa2Poyeh/ztasPy9qKW/zH8JLbrQ4xjEelqTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788972034; c=relaxed/simple;
	bh=G1he+3hjWTIn7mRk9cqu5Y/v2HIQAMucr4FTe3+MKT8=;
	h=To:Subject:From:Message-Id:Date; b=HTCr3SKl0LCVGjEMg0NEj71hPon74IO5vA0b6RLSA2Z8Nml2zV/X8P3srAQM+0DmRvXrmc/iPhNsOG3pIffMyPqDZvpL0BGy0tYv+ZYfveusuGi3H9N/1kSZQKV5pbvLy25fEFoK6Vh2U4kD2nVe18A+uSb15MrkaGcyxOdjZR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdMLUqK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdMLUqK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D606DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788972033;
	bh=G1he+3hjWTIn7mRk9cqu5Y/v2HIQAMucr4FTe3+MKT8=;
	h=To:Subject:From:Date:From;
	b=MdMLUqK7WFgUkoJtcDuihxZdN9QdAYXneVw5YgaH8oHqXvtGoCbUUWAi2hiQd7mch
	 OJBRoBtx7QEgC7DOXWTy/9IulbSq0SZEJJonb1YWT5kH1P9T2BoMz6TNB3nxnPua99
	 t6QaLOTgZMOAjeP+3egKB7w9Y3zjng67ATECDfYhMeD32hIGEc6YE9jbsqlaEx4Z79
	 bEgS6LbS2kk8HHPHaQdwO6sOlUndR/stc5q7KEtJjjz//5UvEGdJY43mJVtBL6R1Fa
	 pJoGc0lMw/G/hntsd8s/1joa2mgqSyZSBNICX6MDpWsDRrIsMlL1e8eCc3lHkpmKxM
	 8MWGWtuFGgrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C3BC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897203371.7757.12529649897385334753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d1fd3cf879ce7a82853eed8e585fc797e4ed8f9e46a8cb8f96d9a828852add
Date: Wed, 09 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788972033
