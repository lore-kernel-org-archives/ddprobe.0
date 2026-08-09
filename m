Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62061238159
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786293634; cv=none; b=DuWF8boy0UfGl8+FbBivjxjPB8OOnln/+nTyvzOvMVPE7FcAp0MQuxnIHas7nf9qMjcYzJBhW0UiDobChI580pTPdZ5KlxnADUL9UZE31cDd21rsiSi8TToztHn7cpMPLDZnCJq6U8GzMbpEElYp6TdYwMxa95zSSEr1Sk4KAf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786293634; c=relaxed/simple;
	bh=YdY5bzjuN7AC02ZqfM/wCOqHY7Qk3nuwuoiNE/c2VDc=;
	h=To:Subject:From:Message-Id:Date; b=lmHE/sPhksyFpvBETWs5bFFbC2T5i0gtKPBYxPLUqc/PGNHIoO/VSK+b5fWBVp3BWU96OJ1Amd3AVvHbAsPANvjlgBNDecglE5bqM61PuojpJwwKJUVb5KrdBdbZxN9t1duRLvhan2uAJp44WJav2YYRIRvtIhuZUFIrdaqJ+WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOHkNUHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOHkNUHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786293633;
	bh=YdY5bzjuN7AC02ZqfM/wCOqHY7Qk3nuwuoiNE/c2VDc=;
	h=To:Subject:From:Date:From;
	b=LOHkNUHecvwaWxM/OUbYxlvybKu9gK2dOsP4FxNS1aq7rF+K8A7gNJ2F75hvbKxv8
	 wZW76i4uxm+L55vgtFGhBpO/4tivR8RACXqUXZXnP6hNUcPYH2JO6CLsGzDCjhr4ma
	 MgKr4HQo3l2s4JGQhz219FLuD00QEsN32mV5/d1aEYPPnnhuCgw3DZhDUY+OD0aVkK
	 GiIiHG297onAxsSMTDoJaZMVL/9wYLlLZ2gYuPkXSkyQjt/v16FvSIziRUrIHqU+0Z
	 JizsFrbGZonnIMzhtx5iMwZZpCNlHdO/K7tPKcEA1FzyU6y62E65sczFNTuzsHGL/+
	 /emhEu1turMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE300C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629363370.1187.10949630222281489528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d980a329dada1fde10b469febb1148576f5f0acafe83906e79787c485bf20669
Date: Sun, 09 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786293633
