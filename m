Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD6C3F9C5
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728128154; cv=none; b=LcR+bohWJfMk/MlI/IwzdlYFD5QIyMDp0ykLuuAPnqlFw9k7R7JrP8kQs6dX4mDDd+iZHUv3PyTE22Cu5D62XqGb4f59iyA08e2tZALuH2UzHxHE3j3TmVHiuHV3bvODgwz9U/Z1C/gRnJ5QQwNuSbW2APQk3+UVF2jGHKmY3Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728128154; c=relaxed/simple;
	bh=ULHegiN5/qVBk5s4zNWQXXNVm8tTsk9Kjo0+huN9dug=;
	h=To:Subject:From:Message-Id:Date; b=J6qCGYuh+4fqGE4fdUbGVUCpqc9Wq7WPGpVmrBhsAA6l0x68GBNyIvauc7w4ulKNLpX85IWcxTyI69uBoJJ9CnEAvB6iZAbZqkEuh71yp9hxWeDzXDPapOVKxStZUbL3wfhkLWtusw4xTdEbYS+Hxf23x3+p2HMs9BH2xEErdfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU70jcNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU70jcNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E2EC4CECC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728128153;
	bh=ULHegiN5/qVBk5s4zNWQXXNVm8tTsk9Kjo0+huN9dug=;
	h=To:Subject:From:Date:From;
	b=DU70jcNmtcyEkRzapoVF9YwDWV8NB0RMb88nepOEaAIhPNQSwRseVaQS+ZQjn+fAs
	 7y55cbMSO5Qgx6JL3/BzBzFeZKNwAz4stHGLx4rhjNh17f5HToG2lr3a5P4dOh0/5q
	 ou5bfvhh2yP5uaVCWtASNIr0l6Q4iaYNJ+LjluVL7YYkoMf+cTj61E/ODonxyGuAK9
	 S7wLeRRr3nVuQ6h8L280c76uT0kyJISSvTv7PpQJxEH6Nc5f9ypv3NQCPhrf+U1CK4
	 gcTldPnRk+4GMGLcYGWUOEWnhdidEpcCG0pnmRrg3CRfqHepoTAJLYgjQ8p/TdYylA
	 bgdCG/xKugrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1664CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812815363.32603.9525182648413352905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116f9b424c412b415fe293f51025cf081b884c9aeb079a44cc19e1d45dc36b6e
Date: Sat, 05 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728128153
