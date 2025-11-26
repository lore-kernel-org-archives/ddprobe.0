Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4544A30DEC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764153174; cv=none; b=DgTYyDs8x5kbW/9RtiS1BGmjOX85BjHS2GryvN9Ilo5Du92H6gRBxxAB6+Xf7DdgttXKXHcmxqXkpgDiJoE/gekt7nSROr7qAef6N7z6G+3ZsFZrPd7aCxZzpu4Yn8HLlbCUufDXE6pRz1n72bkWHJd32NfJB0jfyW6dYyCbEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764153174; c=relaxed/simple;
	bh=a+UURCEjadtCeq6mXOKBFOqrUSCwfdMMmISK8FHvGFk=;
	h=To:Subject:From:Message-Id:Date; b=RQJ+P6MpL42GvIn8rmbUubc57bHZ9/ECsFVVAmtf+JyEtj7XWeZZxE+faK2MuVfTq0xQBbJQlZK+T8kvHP/iosgZr130KMM2gaUljV+rJReZt9ot7A1QtzrksWxx23W7zwXAM74PJHo9VG7YBwmeUpuGKO7mD7fMFCWQDwoKmFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oODDTFJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oODDTFJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B050CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764153173;
	bh=a+UURCEjadtCeq6mXOKBFOqrUSCwfdMMmISK8FHvGFk=;
	h=To:Subject:From:Date:From;
	b=oODDTFJ0hFw+TVBg8dOVfqoWlgBejaYaSDN3Hlz/t4ln6Q1vXujyp+XJDcwxdP7lL
	 TiVIvm9go3cLdrpbrHYPPAF1FTr9lJIkfcTFLup8EtzhM84MeOm242BSaS1zaeOxCd
	 ye3TBhNZu53iYts43rOvdWS/ecytMMYtSfJjDl6Qz7L/9USo+0jc9/CX+LD8aMvTp5
	 bP+QjQdEDjS+LkNP/Uw14XZwi93dRCN6qYaCbQ+Si0RtnhsswKsuM7r50xZW6HLigy
	 N3cr2Zd20EWtxI9XG4X3uGpaOhi8kxZjnFUStdcJ9B8XgjCTsGJ6n7Xtts3YL/K0PN
	 8OM9es6NJQ5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBC7D10F21
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415317363.31561.10424486327136099920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f1dedffac2f0bcc19a02141ac02b34a47db84cb900a328ef09e9cdb944ba7a
Date: Wed, 26 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764153173
