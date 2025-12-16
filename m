Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6873590D4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765898634; cv=none; b=J5DgLqxhlIaBSKNL574MzQbNLdS6x6ilb2DBuuh1fkUloTYrKhsaDyUX//h/nEZbmdsmUNThQ7KTPj1gxRGv+62wfULo3xoTIu1XQPfyrXfjxsNf44MvY2eSak6oXOnDfwpX8Ms7L0pn1vdVeX3iIQRy6+AoCRda2j6/tfTk1aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765898634; c=relaxed/simple;
	bh=gMlImODDy0obGI5bjtLM1RTiEAsjkC7virka8dPk244=;
	h=To:Subject:From:Message-Id:Date; b=fhK3YfSMWNg6M+NaKE/PECiTAtZzNrXJQqx6czi1LRs/5rDhAUltuJ+PwUlxJWa82vHeiMedxRH5IKEhbjoGo0VmEsVL2DdM/TzTXZfugJaODWxp1lOAVSnUGUCLjFrtoLjvgCgHS/TEGl3Td9Xf6OuRoieItAcS0jgfNmqtByI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciyIOL/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciyIOL/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC44C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765898633;
	bh=gMlImODDy0obGI5bjtLM1RTiEAsjkC7virka8dPk244=;
	h=To:Subject:From:Date:From;
	b=ciyIOL/DC64qw38t/wMlGm1UN7oXOdOUdJoc9vKusF+kSNda5PndWw8xqSfv/CeUy
	 PeZQ2QktSMV7bjefByJaqyDKXyoYApYAZJhEv9wi5fjlpbJ/wLP+Zi3zuPpY7xZqpd
	 5RXNq0ExM6pFpwSzOz8GXVLdAGGFuPDC4bhmJ7vh2Vj7kjaloRts/2CmImjQocXC5T
	 SFZACg7oBlz1DjpZu3JHDUNFA5OZFmfEifqaf9o3Fv1opn8U+RDXWrS6lmg9PIlv+A
	 lEwvYXXjLrkmVFz0eGmiS4NGSr2zqdCiZi+2ygc2+7IReYbkLqsRsNwbAtC5hXuRaS
	 wNYn7y9CwdKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091AD609AD
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589863358.12639.2137674427070540446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b262437ae1e117860626d8d6aa368ee1376cff7c4dfc11caf9525d2a5cb4f6
Date: Tue, 16 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765898633
