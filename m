Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C81526F467
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746470394; cv=none; b=q24Airs3tOevWwUq7mSDpN1GH5rW0XwdjtNZu+rePT2b5BcOb1nuRDTDZPVuzroax7ScFknAVwFzdQRXL4VulKdWoND+c7l0wskl17FsFOqwVFjZby9z9/Ygr14+FNAVpYnG7OZEQsMBIwaMoKCsPt36S0C0j0W7emYLmU3p2y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746470394; c=relaxed/simple;
	bh=GMBhzgC12ytsC7YfXLQWhD3POPONLtztl/4akhdFshQ=;
	h=To:Subject:From:Message-Id:Date; b=k1CWAnpZGBbuPTpSJk4bGUHybtDuKqvRHven5edri+rD4M0YrMQDfQ+aJUbavkBrun3sUVmDARd9WPORvGnGKDDV/A/k7uEVLE2P3J6PCGpi5nNQuAyPI5lt0O9Uv2TP81g5gJUGoTMjz/sLHZSB/gN3K5tms1quORDdIEcUHrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBce4PZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBce4PZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1EEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746470393;
	bh=GMBhzgC12ytsC7YfXLQWhD3POPONLtztl/4akhdFshQ=;
	h=To:Subject:From:Date:From;
	b=aBce4PZSqi+qIVS7jbGBsn7mSwwC/bgL5GPftT4ITPme6AODpTXslKUjpjc695pNT
	 LZzC/XeJNeGl8OzRbwEir4faULZFVy6fIhuPkYlBhvlbqH0leqynbqXM8/UnnN8on5
	 p7gtHKi1E/nkDq3ihSPCEBBBH2+NJYtYSAKEHx4fK9rpQLZOihgk1/Mcn6pDTr+m5Y
	 zCSbhiGbSzeGBfrz6pe8IdHxToc3mp5R/fCXsQoLjiyhXmDkReRoOBmfoRG8M+rE+G
	 ZCh3Q39NWCSlJYTo6911KSIGtCJrGQRfZAH9RteC6cyzEu6rt15nEsZpNYl8xV9gK4
	 ZNU1teKIVPthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9940FC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647039361.12124.9086395363984726429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685b481bfc3a2ba479d297f444a5c222dd08a820b52257a9a684a720f75e7181
Date: Mon, 05 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746470393
