Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEBF2F8EBB
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778329654; cv=none; b=UqC4fqRQLz3n1ljM85uF/QtDDJa4CZAl4kj81qj2w8VYtBq2bhUxMuuDVS1ye3ShVw45OjR3leNc4XRewgAg9lCmOeMPP/lTwmiJboXTEK9JYmShTlpPtUikUi568fzBC5gvlqt2Anwisjn6j1EPUULsMJETdOj+U9buDTLnXJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778329654; c=relaxed/simple;
	bh=X6G9QErHj3Iyv1PyyLb0rkDx7dJSI4AXXFM2rwaubR8=;
	h=To:Subject:From:Message-Id:Date; b=a5Y+HxCQzy6lWOREZvlak7RO8NHx9R7HpbDfUkd1AQyY/9UM5AMR0HeGUfjEy+DNvLhZnoy2zrZGl30w88lBrid6SiCZDoPquhIdWA/87Akpun/fJ/VxZt5s7u47SjE5uRbbMQlI9I4Bba4SiD0WP4CgJtoKlfXFcrYxvXMeApY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWhnYuBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWhnYuBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49859C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778329654;
	bh=X6G9QErHj3Iyv1PyyLb0rkDx7dJSI4AXXFM2rwaubR8=;
	h=To:Subject:From:Date:From;
	b=TWhnYuBnNE9Qrzqer7fKWQRDiOmOmsPntoaZw6bDb13uBsSBDf15BlDjWpYGM3PR7
	 7WgqTiv1UgVVr9uTuEqkz0RIjN5AelxS50eHhQyOgoK/5qysWuKEzDnSBODlgl6wf0
	 Yj5Nmw2dbse4vYZpvd+DNYIr98v9e+hboNVzAOObAN1Ml0L1WlD/hlbjV9xRljDtW5
	 QvK0YPqD0aFhwA6ELJR0CBqL2Y2kkI5JiczYhUU6a9KzbKH+G1E4f4k39ej3lb8vXh
	 YYpfkFS+Bfjcq6LH9zeG3aXYkRvnG8TMNQ+Ku35QCO34o01kpHZcadrn8TkaVysJf4
	 o5Gk4bRV3cSrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F38E2CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832965391.16688.13465653956826659008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213e572430a41ea8c67b11a88aaaa37ab8d87e7cfe95a88ecf704a7702f091e5
Date: Sat, 09 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778329653
