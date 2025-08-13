Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB712BD02A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755102594; cv=none; b=b5E3wRtnuFX7WSUfCHA2uYVVrVuV1YtiGzpCCNLIgN/WAoBKOPE10j7PIbDJEkliAeDK9jCtgUrO+koHhi4JNzTe0dchvwxEVijCzVbEcUKsXA7v8PYGQcWOlVzQ/zU1EsR8ljdyXt+Vvon+pHSezs5ijBcE3aBHPygiVYbxwZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755102594; c=relaxed/simple;
	bh=4i17fdLjcJVD/+4hqk1F+UAu76CZXkeLnQFHShYiIyA=;
	h=To:Subject:From:Message-Id:Date; b=K9AiGawIFODTcPlDD1NQLWPoa9v3TOzQyqStk3sxYIEqRKYiBETyZN5vctD7OkiEUMQRkfJ6P3U3tcF35MP1rcgZnTNDGqpZ3wMDFjQ8j3Tky0go6Co8hplcIH3MdcMy3W0sfmke78jgTaGlQWMX63EHefGSzsa4CFZkxxSZhh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUrrUiDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUrrUiDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CCFC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755102593;
	bh=4i17fdLjcJVD/+4hqk1F+UAu76CZXkeLnQFHShYiIyA=;
	h=To:Subject:From:Date:From;
	b=XUrrUiDlXte9qGVof9Beo6kZQ3gbrLba1a35X+VeqYzgjkbmantQbORC1P9dgDhw6
	 xtykZ+qbjmE0ok3gAZQIMj13ED4pUXE2gqhKli40cjwiLRhMRJOqyFWxku/ILz1VVW
	 ka7NB1WsiXOjwE2kjLoJG5F/7XORAoPFawsN1liSc4RqCPWTcoa6YC+DM+EzLSDjqp
	 0ZWNUM73xRbpUvHzyVQmg4rppOI392kCzDIHlGTHRSptFiMSfjbEE3GqtxTddcOj7k
	 gcz7HWwzxmQyehVissrQOGaokRN9nfDNH0QT04dZBk2MsH8sp5R2Rd4jxFQ0Ql5biI
	 9UIGHqgE70+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510259359.3496.8797110908093169262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847bfa09f01da9d0f0c3a81843001c099b061c0fdd89f043ce28c78ff7b57609
Date: Wed, 13 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755102593
