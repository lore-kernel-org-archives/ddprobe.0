Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D6D19049B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763576514; cv=none; b=kTcSHXZDCP5ueIcBPRFZi+fIWgcjwqODiJzfXYQ9uSwsx+WO6rTFJv+gilfFJ47PT3Ur2VkouxUwcl8cOs8jlc2S7N/KTFV+S+mmTZ97RQ5R8gk4AVKhxrNTj1+dzRyzvOidNTZUXcH6uCXqDk85vP7WRobN22KyNT+TFjOSKNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763576514; c=relaxed/simple;
	bh=LJxV/WceXUfWBdd5NL3Gp4ZIofYMPEYQLHg5qx8rLBk=;
	h=To:Subject:From:Message-Id:Date; b=Zlm4GtHY8FpUJ9WlLGysxyf7jTapNRQBKCbWscKmmLSX/X+EdHGI5is1QMEsouQlHsArl3CovnMAfABjr+FoSpKuQTM1Mplf/LK+JL8ez5kNT4+kYaJNb4AbiMvZ24mDRMKPsi2EV1PbhHuKVpC0MKcoAlZq1gWGjUb9FlSM9yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rthrcodI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rthrcodI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763576513;
	bh=LJxV/WceXUfWBdd5NL3Gp4ZIofYMPEYQLHg5qx8rLBk=;
	h=To:Subject:From:Date:From;
	b=rthrcodIqGFAMv2TOkmEO3NzP3bqVr53RE6cSOY+XYg3rVPIETrvcOqrd2pD582CV
	 aQIXope3PunAdyDAM/CcK2aliQNFhga+IpjtB9G8FpSFJsmB1Nu18Tc/jyyxhL/E8P
	 MEOM8Chx1GOqohQBZI7S4sPed82YWW3aem4K8S2/qPuoyDrWsv8PCVhhcoxaIHdZr6
	 ftuqaZJruQ6oZCqyUirAYL16duYdLz02CeYwQyIezdgWUJcEGb+YRA2aVXvnVJRVn1
	 jr17fYXu26PnRElMP6fJkEqwOhrRj5LGHKZKB7gR9Tn4Ap3v5ddIn/iqScYAfo8RfH
	 /43LyFoeItRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC2CF58C6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357651358.11181.8036643576171723024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6ef9f5a0c94f7140628efddfe6c20f8c6c0bfe8b17f39b36b18628ecb1a5a5
Date: Wed, 19 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763576513
