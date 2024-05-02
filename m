Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51005819
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714634543; cv=none; b=TTRJiXyNxiu5AFmwAb81gjtOXEAs+tXCPyiPPu0uKZcvpR/yO3OuHZx7PPD2H97Zo+7yiJCikbePMP8gf6C9LsSxDGfDb56TB9fqZj1CEijmb9ypg3oXk3xkON5QeTjdla5a6/28B6tA5+Cfe69bIOmOzZ1y2W7bM/w9LmfAvvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714634543; c=relaxed/simple;
	bh=08SUDpnvYk08l8yjw5TDKVXb8+cEsmFyHjhpfrBHnls=;
	h=To:Subject:From:Message-Id:Date; b=tqops+xfyHDjgRuSx2Oi9zvvnCPFIVNYgjNCYgk5q5au9Bf2t88kkv/Rmd1BYI5eHveKSmkVa+Pq7IhUIwcCA1dyI3sBlDJ6Zp+kWOmkLFsq0srM21dfUpkbuIIcRTGUWIGeVFhWi8pxyOpT/OyZW+E51XG3WsZaovlgkQd5eOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro4FDaS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro4FDaS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64EAC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714634542;
	bh=08SUDpnvYk08l8yjw5TDKVXb8+cEsmFyHjhpfrBHnls=;
	h=To:Subject:From:Date:From;
	b=ro4FDaS+VuF5DBb9uvbgceeibfrlgcqnZDs/CHGA1Yn8NjnkFWFS/+hggF1FicB2y
	 bSy43htQ31Uk1mTeQTm8y2uDypcq1HkXTgTaNwusJ/3lCvVXj0noAEaDovsooWcRIW
	 /qqelnmzbFFcJKJZGwe3kGAblsc0qZfBEOZlHsLSnLxI0F89QiKnBHoziBGmxhD4cM
	 4E6rbREU5p89TUGbHvJ6CEgeNme9baEsPsyyQjP+TX09uaPzsoErmzkAGkzVfz2YQm
	 vqU+PTULsOoDINLws3eVC6bsOMX6YqYZOhLqbLzzhmPxNqVPADXB4Cz5khMrOUmuAN
	 LHTcdlRDevo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1094C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463454278.31351.6076035319128068014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eaec1e3f8d49edd7274c5dc67679d70b1636215bf90da531f3db18f1577fce0
Date: Thu, 02 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714634542
