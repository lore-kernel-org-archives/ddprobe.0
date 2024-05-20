Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7089A33D1
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716177743; cv=none; b=BHLLrfb7cJUQzILlDH+uzF/PLd02xM+zJgoRB8/6S9HBxS5S5HGokgzyDczdTmIbNRnus6U/V9K1ePf3AZh1QsWt5Yl7IaEnrsqOntUzcxMy4AQ4m7gjX8kWvpADx/YP9bl8H24U5/pjULVFPcWkornjpKNsipcPzH+TwTsD6Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716177743; c=relaxed/simple;
	bh=9c/CFBa6L4sxIf2HvZSSW8DCImc2mkGfXFL+1kRkz/k=;
	h=To:Subject:From:Message-Id:Date; b=MS3Un9tdSYGg8HKLf8clHSpgoPbjYlmIoB2NhMw+s62F5E04VdiC9qdHMfSxfI2BskRlBfbrreY3UBkRihGw2y4kM2fBo13QTInS77bGJNCzKxmuDwkNtN/BQBZEEd/CN294DY4hjiv2vaHFZGfdVXst0m+alGgz4k1Sifv4rYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY+AMYMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY+AMYMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E76C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716177742;
	bh=9c/CFBa6L4sxIf2HvZSSW8DCImc2mkGfXFL+1kRkz/k=;
	h=To:Subject:From:Date:From;
	b=OY+AMYMK87kBGoOo8FtFtx0ftDJ5R3lxhQ75JaoF5sAWONx2oBDAkTwyrNXEaygAe
	 vEy2UnQPUVlxsDBsbct+ca/LyDJWiv9mVNa48RbULqQcGv+aaFkxh4oCzqR4txm/JR
	 rS9NW/Y+lmh4e3u8cos5bu7USSJw5wbnOYxJsOd0GIfoeFelPTyM4JcDG1drAJANAF
	 EDF3ZCLV22n/sjyqvnJhaXJrdWEXNIJ845qNWiXpI13okwBNmpFJDw0zeStl55an2+
	 UMcsIxH3U8nvfnDI0clkhk5wKAQ5Fz7J9rjrZ0OJnua1BmjmVJyJ0Bd27/8CrE91J4
	 X4CTW4636COAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4CEC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617774280.8104.7700882454197026865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e602feb79b345c38a6e04b4ba441bbbbdc3853c47fbf9b816b7504be055056
Date: Mon, 20 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716177742
