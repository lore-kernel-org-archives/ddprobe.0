Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB9D258CE5
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747723794; cv=none; b=VIG5xUJ4v5l5xTXKzYgpPHEQDXwM+DNh9SunP5rYugp8lhdZnfppVhJY4Q5OjTJSFQcRPma1xiGMhheLZKPLgtj06BeH6x3H80WnSGTJGznyGxMHyH68ba9ECArVuW2CodMD5Ke5PGnvkeX0y83OqwUZPT4vDtdlmvQ83/OA+mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747723794; c=relaxed/simple;
	bh=yZiH9utKIK9VR0u5miHPziyajQHUOIbwTS5G6wfy42o=;
	h=To:Subject:From:Message-Id:Date; b=AZbR/+WVVEo+n+jmQtC7e1S+AnnMfCvQvUaod8tal4nGh99KGnjxHs1FlphR/D1K6kUxF79OxwhrFIPE9Ku1v3i0FuvJvEdHLbjZdcCUVAO2NCRXsZjG1fCy6XJpYIyWu3G7rY+y9aU3klCxcs4kFwJsRZEM6DX3mB46VO3TjsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2F/8Fvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2F/8Fvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E05C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747723793;
	bh=yZiH9utKIK9VR0u5miHPziyajQHUOIbwTS5G6wfy42o=;
	h=To:Subject:From:Date:From;
	b=b2F/8Fvcw05/fKrfgE7K6U0mMJu2de+Nz6RmSK7z/59Gn8s893d6/aXHp8qRF5rG1
	 nHfKlfWYda24hbqdSZE0EZz+jGp2mVst2MhMiThWO+8MvM66FRBaoAC7/nGCngXqAw
	 8Hc57E1Ot9TS2qRoCmIzjqUZWoQ7DhvTUwXHbL4HKlf0QTiZsNYz1nRH6dSuZkNDXp
	 TKMVWqEoMctKfUzI3QHkDC2K8XoC1PuiiJXAxQ8aszGnGjXa4tivzymEtCI+5+0Atb
	 k2nwQowhrm/0s/8wIRM2mlQKBBSbYsDTbDok9HOh3xCt52MSpVx2EqXz+WIfT8SjE9
	 oFKQ8Dl2jGjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFEC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772379358.9692.8497642301475313436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172bc235e585c05ac65dd06b80c8e4ef946596c828b4580624f1a7636721e410
Date: Tue, 20 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747723793
