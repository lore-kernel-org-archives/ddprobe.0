Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9BC3115AE
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788663034; cv=none; b=DfdvwpyghFQ1kgMPPgsVaaeZBCfXWVphBpScHxPXZZqRoOczGvJGHjTTYTmNI1Gqexc44Pa7CY8rZuZeNMtUyOKftAMXdp+E/EkFqc3Ss0TNAzrPBWtoy1hlLcSMmNC+dtZHTu4FKUsHBnKlar8Bla0vD+kPrLIy1nEky6rwnR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788663034; c=relaxed/simple;
	bh=xflGn9rSBdmBnJgjGqXgKRc3jXUeUw8BMpjSrR73EX8=;
	h=To:Subject:From:Message-Id:Date; b=LRYvHi30dqxvvub3gCr/sy5gdzZN1gjg86JBR9AMg9QvNfSGRuqS7ZT13v+G7uXOaB/+kHoaWT1tgqYAsURJmU8pmeUtANbuVBP4I6f0BQ2Gji/1RXEUfPzK44qwUp8ZzW1VGTI8yRGznNZMMmkqQHxA/LVgQK6VUTR+3xk9hW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwpbSfPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwpbSfPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77B6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788663033;
	bh=xflGn9rSBdmBnJgjGqXgKRc3jXUeUw8BMpjSrR73EX8=;
	h=To:Subject:From:Date:From;
	b=WwpbSfPgKvJcHkxOOaCXV7BZzgJjr+7k+obkCU1Ebn7ZAg9lLO/a6sTnVNYV/AdFm
	 5/qqHQSY9d5d2ZggjoXRA5MGt4SCQ8nBBxldSBsGSdlKECitBkrEbVvPTfWu71/Av7
	 TA6pWt81tn+4+/idzsCz7NLokOGlVI1se+H/sVmeXbs9SGb7uej8rfNHs3fLyInii+
	 ITF0xL0tq/OP05sHEzI1mi9BNPMUcStf0SKMgyx1vZqL1Ab4mM3j3ytyGXixuDTkRO
	 0Ov980Is4Ue3H/M9m7VIMj9av5joeQXBigKoC8w5abmk62SgEkd11mC5Y2BSaLlBPa
	 jVeKuNXQU31+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0938C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866303368.7345.8554570264331280492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062610c20d4891d52bf0775e92525db5c5fdcadd40ec828b6126145476dd32b6
Date: Sun, 06 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788663033
