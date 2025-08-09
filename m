Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276151F237A
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754762394; cv=none; b=AqUTLmmfflaDGnEGkqZFYLfvqiNLhCgnQJycn9rtv5GRVibIY/pntusOsenWJQ7p7Br3/2+Dc+nryyq+JMyUvF4dWEutt8NnOhKEAhoUUOeYOWZAWAH3DgZe4kvFWMZNPBwi/A4ZCoBWnXsbsUlW6RkYX51buRskBdatzvqqOBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754762394; c=relaxed/simple;
	bh=H+CHyJY7a1Wyyreej94hAoFCshKifvp85F+J9AOQaWY=;
	h=To:Subject:From:Message-Id:Date; b=o2lX0mtTIFOoiHKsEQjd2KqU0Mj35DNYpWlTw22EqvN+IN0lORhxJdKtpWhysstnFo+HaN3hh8YacXncCaYne37OrEz7CDSeUCOcl8muaRXBNa7IiERDh1ic1hjXCBbvZXzLdWpvKpEmTJyLx4kvAca5IJCp0Kb0J5E+4ffzlIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEC7Jzsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEC7Jzsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754762393;
	bh=H+CHyJY7a1Wyyreej94hAoFCshKifvp85F+J9AOQaWY=;
	h=To:Subject:From:Date:From;
	b=BEC7Jzsr9ZyBtkaGRjuF9f9e4473kldEtL3fWMPfTXYmF9OJtw0Fzs8JByFr5cVJK
	 CdcPFgXb+PhRJ7dm5T7K9UL2citrIkuQo0Bh17egrQfHkFmjqvmWfLrEEC7rZ7vx3s
	 FkNgolaoX/usAwpIs0qCvvmFxsCasW+kRvJilDQTJkijNVIbGoGkOAVfUUX5/rRQyF
	 0XfEF37xgcvzGDSsM5j6DUfUFqJN5+DNu3rFSfRu1wHT9N0nq70LD2aS27Y0/z0j7d
	 f1P7jqWdLXcWqCQSYYjckHJ2szoLiVSgc+eqr/PpbOneGMNXW3CWfkHhwhPX7Q81Sm
	 Ord+w5c3ZXifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91094C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476239357.7298.3806043741007972796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb05f2763e063b6eb71e0ecc912e23f4b8fd4edfab5e97395ffcf7235c1433f2
Date: Sat, 09 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754762393
