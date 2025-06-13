Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271AB19D084
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749788994; cv=none; b=tZS9eru5VXhcpX0yaXonH8B6DdpPcVoJdSRejVrV7Cp+U3AyqiXbOLEON4+XnxAPVs6xAZeDFgD6VhKuoDG5V9mp5QkZLkVpTW0wfXyUrHoOpOGwMOCM1LVqvio4ndEv0q9fwpqL7b9ue01of/k8BqC+7JZM8KeXhuWIWGKOIz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749788994; c=relaxed/simple;
	bh=kc3AUMDgvlNrCPwRxjMreVROYQ5fFXYPq7xm+aFqjSk=;
	h=To:Subject:From:Message-Id:Date; b=h5HYyZXvtQsBSVDYZrPVh7iTxG4LryYn018KtW4fvhFRzDwcDRbwxpllcxX/CQRrw8FBqsuiKzuX2/8EJi5sP3qeouLTPnK3Css/tQsuFHP5vmTkXt5oIvDRowaezS45z45h02tfkftMMpkvlqLjNUs6MReXxkWXlr7JLDvBPZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDIGdP16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDIGdP16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA459C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749788993;
	bh=kc3AUMDgvlNrCPwRxjMreVROYQ5fFXYPq7xm+aFqjSk=;
	h=To:Subject:From:Date:From;
	b=vDIGdP16kD/kuwP1ICR28O8llVQ8+wRO4637CO3PaTFE7VaDoYbcWQxoQqCKPXFIL
	 tC60dUnYaaps15FknmqpgN7S9g7B0mdmeGUupCmmhqiqfgiB+xMsq1vvRO2oc8lU/5
	 JjqK/kBQMmn26oX+qw6vkdrlduXBKLenrKTDySFiwXp4zOSbDiJ1fKxmxfXwxsZvq0
	 +yq/lSi2KZ/jpZOmNebTa+CNoUevoJRLtwnHQdRoQhONqb/QPQkF89ENYxaT1myGtQ
	 ibxLIVtmEuG/taqsuRTeqV5l+6//58cLt1iQ7nH6Mrb2Xz/8xTdpwuGRW2clfu8z7u
	 qT3GZ8MnDZ8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95287C7114A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978899360.14495.11846596832107770285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafa423e6085e9bc045de7970b01c4740b3eb000f833d2ec981f5390de23d52d
Date: Fri, 13 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749788993
