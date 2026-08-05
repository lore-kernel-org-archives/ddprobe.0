Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3027945D1B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785931834; cv=none; b=G0n8VaAWH9MP6ckcLS1UQTtZOD2ttncOhUlO6RijGsN/ZRI0LOUTmss2wirOcbBI2beoXbt/YKxlWIYUvKMh1xan4ajesS9yDdQCtM1tQ3Xd8f1JWVIPYCOq5QCn07L7mT7++cSb9HyfJvfbLspNirXv8uG3g1MvuAmoC4+k4RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785931834; c=relaxed/simple;
	bh=aUJy+nPPBZMYVvojOK4sKgxiR5N+KYHGKEZkOeJgFuM=;
	h=To:Subject:From:Message-Id:Date; b=bYwKLEMiWrwymZZVVIHEFDzQhA64rITkmQGVdYIIF09yU+Z6/P8T5SFolQadEa8e03hwiRfCWZCNYJcFCR4e59KRJpzXUnjdmESKJBkv6yCZf7Vp65FZ2K7sIspOymF5YFYX12nRAqFXsZpk/I8f6Iu1arZSen7vgdsYIcjgFdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulAvl3/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulAvl3/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFD0C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785931833;
	bh=aUJy+nPPBZMYVvojOK4sKgxiR5N+KYHGKEZkOeJgFuM=;
	h=To:Subject:From:Date:From;
	b=ulAvl3/K0DdJIZba6lYzmzzGebW28/GCS1bu7n1+BnWi0NmPOkp5WKLVPLqsMIz7O
	 HYxINnFg9qR2n7s9OM3YQsBoiAIKCh93RaYwJ5EyXPCoibU7n4wMIgAu8n2gU6vYv0
	 4cQf6sXiploJ8OwnFAywC1mM9lqM1iu515MjD9j794OGiibkXST9/oaaCs13KiGrs3
	 BMnC3GXJeP+CLR9A9LDyd8BXJPDXr4BvakVGPBygUXCFb3u49VtC4/s85bsl/uAVke
	 s9JQXoqvQFJNSe5SYdygYMVx3i2i6MdtmPzs7zrN6MQyiA71uUI0SJuwtB7fkBDMcZ
	 FPi56d+fRDD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929FC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593183368.29738.4849442009343768527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff4ebb260502c27f506aa8d92a735716f512c7f71a99b009ca72cfac94aadbb
Date: Wed, 05 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785931833
