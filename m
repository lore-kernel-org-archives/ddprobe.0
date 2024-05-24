Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5A31DFFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716565403; cv=none; b=WJJSz444Ct4GTPNmgEkOhpi7yr+0gZDdLq7B9c/fg3xF5DBVKZjTamTGqgoQt2mf8+NfjJpf4Imy+ZoE1HT3BQ2jMXlPebradkt+ZOxZsrbjfD5uZa0RY/7sFHAsgK6YdOQ/jXvafCBixmXag1bqa9zVUUt/mghJA1UxoLsKOVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716565403; c=relaxed/simple;
	bh=nVygK2Y9i8Tl2QavutujZFeK8Z+feDoqBR9aOgtE9bs=;
	h=To:Subject:From:Message-Id:Date; b=CUlaATYGm/p4eZAvbhkoIzEwzXwdhb9fqFuaGdz/cyz/giadnYF6cKGw7C34tmVMiUsxWpqr8+TkEt4E7NEofmha51cbqNyRcXQr82PGJKMkuH17EsqUagRqJeJhhjxKRlvwp5WdLHohV7ZFhsGjkrhRVYPFVRgVT8d3tK3IZ8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZcxk5JO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZcxk5JO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 000F9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716565403;
	bh=nVygK2Y9i8Tl2QavutujZFeK8Z+feDoqBR9aOgtE9bs=;
	h=To:Subject:From:Date:From;
	b=BZcxk5JO5J7ezwIkOa0LHFK/7SPWjtst+/m7Q1Lq1kt2bA0K2fgNidycdOarlcj3/
	 fQW/mGsB9FhYpzq6BLqdWJp0aZnYB6nuEfnMUlmliTxEM/bsfs5VEHkNl7mmSf94cd
	 M1LZEULTm6PnsH2rI/q4dRRT79sn36qi2eBGU6jZq17GD7YIlpbzG9HGnWxTys7JfV
	 xOrU7yKf6UFBt5HKNCR1BxIHPVsr9twc/+IFWUkpIWoe2rBd4503pCkcQHHrxvgTPs
	 i1SBxaUQOH9yoZUqF628eD5raYIi5QLeHxe7vTngX05ehhKIGbgOD7uyM176Tj0m7E
	 Nat1yMVxJZdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C9CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656540283.31775.16667530103941999087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42013da1c009a379f79beca41867c4db21c469a7c0886bfc794ebf8870451ce7
Date: Fri, 24 May 2024 15:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716565402
