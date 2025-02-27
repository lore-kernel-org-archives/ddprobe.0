Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF621C6FF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740682134; cv=none; b=Uv34Hq7dqYwAjcE/ayhHoiPPjzrgg8wm9GsrmiZXzYZjZWa41Umqa7XAT6gwNVuZy792xhUrHS9DNKiEkjCREJ6z98ivmL25x9D72Xew91wPe+VpByqaMD18TWqgvm0RLIiVxvkc+zAPJ0Wchwl7RUkFeXlR3H32dH1vBtiRVLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740682134; c=relaxed/simple;
	bh=c5ntKGANkDFtlEHS9CqjkWW8DlckjaW4IcbF1zawtsw=;
	h=To:Subject:From:Message-Id:Date; b=MApaFsLT16e9mgHGpW3/YkoPJ7Ns9tOFJOiTUXzffGPWjkSX1dffYBkuI7c8Ry0vLRDP2aLYE3OYegna5pZIR+dwHjCxsupOMMU+b8dPbjNaWIEptI9NyqH+6ZYb+Smw0kER5mPIsTdfAQ3Fp5zpFykLJ6wkjqaB6hlSBRwVNiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6+ND6DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6+ND6DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7FAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740682133;
	bh=c5ntKGANkDFtlEHS9CqjkWW8DlckjaW4IcbF1zawtsw=;
	h=To:Subject:From:Date:From;
	b=m6+ND6DWctJ7y1DWft2WbOg9Z+1VqmwVwyxAwJaXTC4M4LQSQD+K+k0qI33zK0ZKK
	 I/Ay9VJ+dCPWe3T5unP/Dmy7QmmKUJerHghHQE4Alsq9wr22Hysk680CqG5Hjp+H7t
	 WeUG44jKoSZxt1dTEeYnS0Usydku3Dvh91eP61VX2Brshv+xXrqe/cPUHxbq5pvQrB
	 fD+7dYTSHsfDk2mPA2BrAoPRQ3TgoNP3UIv2QnH+mp7gV+EX02MI7GF4jEQ9NbLmWT
	 xn/LlWME/QxJWEQZy+l2gnEOXFFPA0eKdyhTO1y5iuqXdOCQjWQUpJeX89JnDnAbYK
	 1HEt2mjDzBy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCAC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068213361.19634.2094637812622563287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f772449f15b5a46ebc9d7ae5c60f0dc3433610814088e998f5bd616f6566e368
Date: Thu, 27 Feb 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740682133
