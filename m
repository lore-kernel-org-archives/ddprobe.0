Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8612DAFAF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779850954; cv=none; b=H+J4iMtGMhj7jBNxuGewskXwAzcjTXqQfuU5SAfgMBxjwc5O8y5iA93f00TTMyxJO2YItrk6WqozznSRjzWrv/aWYWawBX+ojmfsJVpNhXr3cU5QRSpmZDU9dsMik4JfW/w9wloqCBs/w4YDqmEUkuENavcSjxoiuNGBqryGWl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779850954; c=relaxed/simple;
	bh=fFRSE+LA2iFWV5bIF0yezS5wV2jzq9/EFv/N8J1PN1U=;
	h=To:Subject:From:Message-Id:Date; b=CT0BbJjTkTFjhJkQuzuT+nZLlLh9YERzzGY9MwtPbKyr+Lbxz3mMUeFfZsbAmN5LD2pB1iNb3pNFkIJH03lzx0pwApfCaQ56rd8PPFUoKk+N2b/6dfq0QpiMvkilDYGD81xF42SmkHHdeG63cY8dLhGWZaqoVEgwLnSmIlAmDRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+Lg+jAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+Lg+jAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C868DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779850953;
	bh=fFRSE+LA2iFWV5bIF0yezS5wV2jzq9/EFv/N8J1PN1U=;
	h=To:Subject:From:Date:From;
	b=d+Lg+jATQeJ1Kwf+gcNPlLJWBxlU6r3VJz23mi3APYHQWp39ttg6B1KewEhqU/Ap6
	 nP/YeEqmD0ZZ01HvN+V6GbrEHFcrls7QQx3RyVuRQ+kh0lABBll8rmvwNrfuxxiKXJ
	 WY/a/i9yKNPseyTRtCnh4m5ijBg3RpGW/v/5Xfi07HNwz7iShiOJtwGnyOoOs+CP02
	 lsysiqV8yhlT5tg88/ebo8glcrDJAMPLGKlkLe5vipgS4dLSxxadnzjsmDiXw4vYl/
	 xyS4oJqCBgk/Hw4w3yXub1LWenRT4jFRSxvWBxPJ3jYjhJoPdBrpjp7HGqDSiy0jtp
	 jJm38ReNzHAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A2CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985095370.29379.2251524648481456211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc455e392a68b1fa79cc62bcf08e49f9591b0de582ccb7194055a42d6e7d7f65
Date: Wed, 27 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779850953
