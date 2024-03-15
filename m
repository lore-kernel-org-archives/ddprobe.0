Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75A41946C
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710500297; cv=none; b=quWA15yIfurJKnHTB9VYMILEnpoZQiMVTMoMf+UsL7QaV82BT3a2WpJ15B6jYWVQcdEfRdDE7FRk1VKLLaUCI7dWjXidRz1kpW8TGzTzbo+Ip7g33wIEXX8k9OndClagiqH0UU7YXvtKFT9XKuC8ipCd38WQMOb+PdYT6UiIBDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710500297; c=relaxed/simple;
	bh=QFhSKqIRhOXkHGXk4ox9WZfQW9AVO3sxivN1OeUEQiU=;
	h=To:Subject:From:Message-Id:Date; b=f5nepshKkMdkywiPofutQO/P59QWgOJuN5hQns3itZVlA4crTH52lXkfShbrWidrR/IhC7EnsHENZpQPadKZLiC7B7HsYwN6gGIz1kTtQ1QPqBQ4gLWRyZ/5im+34nGB8W9Y/UNDZOknjJXXHEuEuLri0J4kmXK62EnVgJ4UKRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHnYycne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHnYycne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77006C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710500296;
	bh=QFhSKqIRhOXkHGXk4ox9WZfQW9AVO3sxivN1OeUEQiU=;
	h=To:Subject:From:Date:From;
	b=iHnYycneEskperDRHhnbC+usQzjHTTUfkhO6xcLkPEuZEBL+suZm5devAht5gCmRr
	 9J9flVeauh3WTkdG5+MnxM2NmtiCRdaiAXvi9LPFMaZM9eBz5qd6CsNN8yJx1oEGbj
	 a08nDqP6lgiZED7a+KiGoZEqdL/IWXxRFP4XtqAYl7whPKkZwTcwQAEZ6eEzn2c1G8
	 o3RAp+270g6G8hbpbunz+NGAOYBvNwBnNfQoMpld6DBYTUqqpnv+IBBFCwpA2c5ASr
	 aLnBxofObJhFEYrfpVLJVANvzDsXquYizThNXxlr8vCrbDoKzssbkbOScHoe7CsKu8
	 xR1Sv6rdt1YGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6680CC54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171050029641.15666.1254640859501077773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d243d8b1da32ce462bda8ac057b41b238d7664c2b88434d7be7bf076008e31
Date: Fri, 15 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710500296
