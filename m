Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDEA200112
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746215394; cv=none; b=LG3tC0TbhPkrXD3BfuL5WzilOXaIe4TuNsyccrsKlqZeLL6hlW07bI7jMadaAt4U3QwL9Fww0Kl4C+zYfLP1UiTy9Dbp1qgTAg+hjlNetcpOGUw15oWVAv8B7CT5ZXOFRguVtZ0pHKHDRyU+4gRv6dojEgto51G57x/HDDdZBp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746215394; c=relaxed/simple;
	bh=mdxfZy9wcVdyUUb/LlqGpd/XuLTtnQQRc4FaXSlwk+I=;
	h=To:Subject:From:Message-Id:Date; b=pdF1cwL35LwfIsaOrFwGJpIGknHdOVxt0NKWOwGwASE8A/7fZoPcip79X4FPG+OR9KCQCPGLOd2rVYei8S5s+43AkHMwWnvuDggrNONTHuHHZshvfCIbggfSr6XBlk/HsTiN0YNEKRSrlkMw56OOVVNHe028oaM+39xYisInyMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdBdw67h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdBdw67h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240AC4CEF3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746215393;
	bh=mdxfZy9wcVdyUUb/LlqGpd/XuLTtnQQRc4FaXSlwk+I=;
	h=To:Subject:From:Date:From;
	b=VdBdw67hJfAAmHd74+XpYVl3bjCC0kbo1jKi4dz/HubhDxf3/Z144HOpSFirsWi7P
	 fBNw7B01siyHD1FLA3YAc0iVl9q0dpQWldcLjY/kPsQGmExXHfO0pmbzge5vYJ7kF2
	 WKgFjfNClr0BQ5PPE9OiD/7oVMxt2FRFskBoi2VqnUR2B7R0VqFvE3Emwu2LNsu8QJ
	 9z0yFJYAgA//r07/Rn7daXO+vMCmmxZ5npWWDOeht17w/xNituWVSM6/KeA86M+7eO
	 9+OioIhyzr82sYIz7E9Q8TO8Ilk1vB28wZFpMeG/g8n/MGigsa5ie3rMPmb9quuge3
	 FJRKm2XbAb0OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFAFC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621539357.22516.7570722832622213966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41a95c8aa2d359c81fac7c30b08abea79956a56c59a11f90ec9818478da028a
Date: Fri, 02 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746215393
