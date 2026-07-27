Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5D022A4EE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785196234; cv=none; b=losleXAMGTS7K36WSaD2OS2LODqd2PdSdFFT3Onvk6S1erdCihbBmdZnzCrMKLoKiUa4qLM3JWW29xGwVCQROMW1/437wym5tXdOVk82oEcdd4bEs1QZJrT16Ow/H2kMLI4yZLak7CX8139lpLdgGUt8p5VGslHBm0fOaKQDmzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785196234; c=relaxed/simple;
	bh=7kXm0twFKyRh2GmfIQHkIsLpWuGJQycXZ3en/CTlXe4=;
	h=To:Subject:From:Message-Id:Date; b=oCX+xcQu3sn/iBMW+RfbidfGZLqEb8cEUJj0bI1cQsG8W2kFT7o50/fuDEoKiPoYHi8yk4guGxb7xQB039R0uEPPl0SHAuRJYTJErXuJj1qLbt0hhhx/kFHk7lgTqMnoiLga503udzQ0J3+iY8Mog6nJtPN9Ora+HkTKlqRKqfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOewc7Tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOewc7Tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1870C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785196233;
	bh=7kXm0twFKyRh2GmfIQHkIsLpWuGJQycXZ3en/CTlXe4=;
	h=To:Subject:From:Date:From;
	b=jOewc7TjGtE0ptfTEuAhPYF1X82EkXTr6LONRNl+qCUwpb0dDtpjJslwi+naFccJp
	 +iqKgWRC9/z+oYQvuFt0lDduGfPexSatIeMJ1SMIDMNv0Kn19XTxqDMP3TMvZamZQH
	 8XDxJf8eHpmYy9mt199nDjlDrc7rGMS6mxz5RLq/5GS8m6q5np8HT+KknelpgaEmDK
	 LvbMOxxahCZVJVxuNgdBpDMeqzv5fPzldwTiDyPGY7ZU7KMVYjMqoIsqjnQ49BAQS6
	 NuHBh/ngJ3DEGZ4MaBn1uqt0CSLxseBlu/W4r+TcgQq+Qe2FgWh9Y9OJuG8fF//Bo1
	 Ekx4NL7jmxq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB970C531C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519623368.21034.14913186219399942148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ec4d87947c56e05c21d07127ef542a5606fbda9d27e463be44253267bc81e2
Date: Mon, 27 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785196233
