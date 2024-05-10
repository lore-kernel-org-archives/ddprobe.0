Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F9648CF2
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715373743; cv=none; b=BAgPpxLLVnREZ4z1AY/ij57omRGS5LM1HtL0k7diTwVj2fTtvgaDdWPQTpGv4TpUqCXZywZuaGRKmj3zL8rXUTFR92doII+TfwzNaPJsdJefvy3GalELElA9bOxPCjH49W4OubxL7LriN3sIOaDasNYGwP6EeO78v5ZphbxsJks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715373743; c=relaxed/simple;
	bh=CTaYRy0uXyDpGMyW6F/VhS+Hh8SPBoFu8g0yP2O0Ak8=;
	h=To:Subject:From:Message-Id:Date; b=XCcKqnwgGFpqEUutHNMmaHJ9WwQL+nK6e4OCUZsd13IUv4s2IJ5RJqvWJEb0XdtPlIfA2hYeqS/6YfgIbPkCBw5FYdaV8bYU07C2waZjHFyx6OH9HAognBv4p/nH8BG8s7rj8nHc2a5rFUnuBA4+lRWpMJqKCdUK2pIXgmhLytE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZD1cutK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZD1cutK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5189C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715373742;
	bh=CTaYRy0uXyDpGMyW6F/VhS+Hh8SPBoFu8g0yP2O0Ak8=;
	h=To:Subject:From:Date:From;
	b=fZD1cutKGGm3aJvLtcgNdNCqZlfPDg3prKq2c30wrPmfU8DU4DcwDTEsi2qGpBCu9
	 gPwr859Qwb4mIEFevn00i2W3ZNa4bPfcNTpURHXegKLN8kxstSxHNjuiSIaKhWuzKw
	 jtsPJtH8eaDKG8lDXdqfJJGwjreJaLOvwyeX2PIrsDRrGnFrNWLfR6jDNAF+6FhjUi
	 Ewsu0gKTtSl97NrE4XTOaQ0cYITQMH4Ys/s3FFVtS3hA/d5nTP9Tie8enUbKqqNYzP
	 m2j4BNS9XrXjZ+yCwF4R9+zKtw4D7Aw+DPIR/o9AVEWde4OaQiDHxNhz6QMeDsFfWm
	 SmrWoZM6uy4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D7AC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537374278.11381.3731777594141449377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2629dc868a8d9bad0b9138f9962dd10cc85bceeb06bf9d0ad7dd473d94e67efb
Date: Fri, 10 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715373742
