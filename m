Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D91FF1B5
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750300194; cv=none; b=jSdPsdWU/76+9UXT/qZ5hlmXbLfppkdL03eDBsaRKkm/E49UzGo7kY+QUyetjpkdFIJtUHIb7Q+BznFsfkN5XfQQpN65FYqXAT40S4l+P5rRLlQx6Srxsy4tCaooMuYQSteA0eQ5n9iSpD/3YAYZgjq7hMpQHP1sZKb1OiIasg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750300194; c=relaxed/simple;
	bh=bVNhzEx8FSB41hOgx8SweG8S6q5pvMiKWmIPVfAI9Ts=;
	h=To:Subject:From:Message-Id:Date; b=NCthfSspIxMQBExShbcU3m3m3Q6k03uc0cKuY2eOrwGW+yP/Y6BPse5CCoaeChDBaSw8fD+MNDZFuPIfVSu3Ga4LrQ+x3jLYwsB/ZM51A5EXTKlIf6w3CAyK7SkYk3dyhwHHyoulBz/40gmtuKz0R5Ge9NzdMLNjItSOEwDE0nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYtTflDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYtTflDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65AAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750300193;
	bh=bVNhzEx8FSB41hOgx8SweG8S6q5pvMiKWmIPVfAI9Ts=;
	h=To:Subject:From:Date:From;
	b=cYtTflDSUaDhZV13GcbB0+4MgHc01R3ETSh4kZHPmAIiCnme57YbCMOpumRogJvmC
	 /WUw58S3YGE2B9Yd6dT95NYv97QJse8c+tC5JSdQp/FDnL4sprv46DKf7xKT9P+foK
	 2kug7QQOy+DjSPQNyFggprwAiqRhJnLRUiMpFmEoih1jvGbNIp4cpRmNxll7RV6RK6
	 kUbSDj7WPYRH7ZvA0skhr+dbEkodNhIUTuCo7i+uoW4HxOyHrYIqgptOkI/FBScMsP
	 e8jIHPCweqGfLze8pzQyfHcZy/uB7U0NLwpPWQcRFgL8NhOs0ilIxA2OEuIJAvR0ul
	 4B14KVqBdp9OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BFC71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030019358.24176.673283229651678585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4472d004d408913eb5a7eeaa3e469a1ee882b5d8dde598ed55586dedbe67d3f
Date: Thu, 19 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750300193
