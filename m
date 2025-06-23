Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193F91D9346
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750718394; cv=none; b=oQgIciy5H4tNVKkUm+crt23asITiDrhNKz57snZ1h/2XilbVql/LEmp2zyUWMGI5E/EbY5CNqIXslM2PoRpJrQu2epsRF/cTjUXZt4R6qXD8ofJHiz53B+X0FydAG5/96Lxh97mrSD1lbVBCTC2ScNtCo8SevgqvGkwMRY5apD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750718394; c=relaxed/simple;
	bh=LsS6vZdd9L3gbMs9PffCqBJ54CNq5ch6RkXwAehRhPA=;
	h=To:Subject:From:Message-Id:Date; b=D9EyE72aFw1HBdJVhG8y3QMJ9IGx1XCb5tJjojD2K7Exzj0O/uMsfnXL0r4Y4vJvbxY2SaBCuIVAOFs5nEutIHzIkClCtRFX28yPnpFVDfjcuUfgzaZv+pY6KUHyFQjDxBL4zpEEzUD/D3hfUVDjEDF3vNQdetj166vE7pkI1L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZSvEkAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZSvEkAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750718393;
	bh=LsS6vZdd9L3gbMs9PffCqBJ54CNq5ch6RkXwAehRhPA=;
	h=To:Subject:From:Date:From;
	b=mZSvEkAc3xXVzxrjn01d1k2jgHH0vbNH9fdkcwYPVSzlcu/UO9Ky7+JEzz/wu+OSO
	 ZGiN+CxXk7x21tPIv3xHXE6GzJYXVtGl4CIlpgEsnWFJRDLoBHuhyynXyt3jatvxLz
	 ssTUslhrqbFIwuQQFO/eFISEXdvSgCy8VQm9v/q14gzPsmZ5kOfyiKTXuLHmxoN/Ft
	 kC2nY6VfCeAKp2+QcF5SvAtpP0m6CpnyLSqCBb5UPsTglY7jCQ78LAB+126ympbqmD
	 Zku3FRow6dI8nDBMBlvNtZ9ygQBWy40jBZGWxWsjce6ryrwstG+9KZZHxNthCDgtK5
	 n18Ph0dRC+eYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071839358.21636.13403839959274275854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b58c7b3295576c0a399c51be82f60cbad59f74285492b69a133c5e1760d9fd5
Date: Mon, 23 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750718393
