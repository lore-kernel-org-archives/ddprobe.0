Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2917C1870
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726448754; cv=none; b=A5pcVw7eRQihyDZYTl56n3m4CdBlgmhvJF7uE2rFbbnw9RXJ7pDYPsSWL+auEEsLGHILjmKfIdCM0TZWsSrLnRDnxbb3wi9DA4RKjMGy91qli6euao0ZOXkOjKmabikLeJy0uX65UgUD766BQXlotMoqXRSRUnZKNQP8uMmfVKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726448754; c=relaxed/simple;
	bh=Bs98Am/gUGyEdHk818XjrO53JNTXa/m/Ix2H9uC59GQ=;
	h=To:Subject:From:Message-Id:Date; b=b4oFDmZ94FIO2h6aYYsJUwrnZgCovwaAy8bbsRivJFtK3uHa9xj9balWVSjESYGb6BL200gtv2QWekPblZnj5KkT5ysmMyGKDhcWfRUnJjMVSW4g/zv8piUz5TGQpCDji7j43AcsRhDFvkrtGex1+h7e0/SZ+ei7md2/sgDpcnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAtR4hNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAtR4hNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9719C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726448753;
	bh=Bs98Am/gUGyEdHk818XjrO53JNTXa/m/Ix2H9uC59GQ=;
	h=To:Subject:From:Date:From;
	b=uAtR4hNsoD08207ZAQ7vM4uwc74xELqjwATQ0TG3ecBxr/yB2rXAJ7WKIeK2to+Ei
	 TWmQe4YAonj0Gda+KrfTpkqdc3qq3Y6RxFXHL3WPZf59jR3MqYnoXjQFbIFsnZH0rE
	 rvmbC4R7IgSvzWbMi27+t0zJK6WtK3rGIcDs30iqenEAFIvWPUf0kM0AfFhiQoA3j/
	 fNVSUNQGrpCBjotlJUCF7PfnjZumrZ3dPJhKIlpP+8uC4OjWQ+iCL8w1/ex1EhyMQN
	 0YVelLR3CQkUFc2H3xocPmgTQzJzTPDnX8JzQZnjsrrV9EVUGmd0Hu6qW24dymbJCO
	 OeAcRQ4hIEeXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973DAC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644875358.32625.17286132106880747159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81b3908d9f91b60fcfbf2e0b81ac8b8734d8c5b16a44af0ae55ac0749dcccf4
Date: Mon, 16 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726448753
