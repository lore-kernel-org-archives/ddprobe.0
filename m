Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025EE1DF736
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772243694; cv=none; b=r3BU8kF9fN5Fk3aQfZZwvqvmcm2hba3IheZTHl3Lbki4UPUwMwfWnLQh8fXjgogPpqTFMk0D8Zi7L56E1XlMuec4gCVn1ckdORSQnhGoza/vwrWL+mSpiN5SaqOZq67MVaJNGwkTOhZfMVLbnNjP2UfbbqloG2naCVdS1OXLzsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772243694; c=relaxed/simple;
	bh=T4UcyGbOfsTYj0x8s745fwYlyoHI5Ht2DpOsu2bX+W4=;
	h=To:Subject:From:Message-Id:Date; b=BSotX9ALOB75WD/t+gdNk2rW9jw4UFdMi0zCQ3eEFXJWjinzRl2LLvgTUA7I5Un3gBWCsbQBdsUJqKEmio776h+9QHLU54pNJVKUonn1rf2MY6WLeI78OJBbIqqiJ3tQe8I+r/vNWbxuGKt6GmkESwPRqsGPXrbLdKn+8RcfRlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihz+Cc8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihz+Cc8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D70C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772243693;
	bh=T4UcyGbOfsTYj0x8s745fwYlyoHI5Ht2DpOsu2bX+W4=;
	h=To:Subject:From:Date:From;
	b=ihz+Cc8OZwauvIldPtffriaF16gnHwCuDj0mgNGow+n7SPMsiMXdG2bbjidG/kq49
	 ksle/fgq29PGKDQ6WghXEoNJjh18RV0IRw2bqy5sORcPLIj4i5KTCIyWG0PZHUeeRk
	 OlSdFsrZ47lN7mhIF3OSgg5jB3ZBlZ1eLJbC5X2En6CVcIO5T8qAxyJ5rLAfSHI7on
	 fy53k1R4DydPPXhgE6TV+tl6qVluoR25gswE5tt83J/qP2wKU7alo0db+eM4YTIs1t
	 fSa8JihCbv5eXYOKMGJW4b3sH4RFP3OOTZ8ZKXsqBdDgGJczKevElJwolQcQMViNJn
	 JYUClNU1A2o3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0891048926
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224369357.20679.4812932488028173806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d5dbdba7538f8776c47d8102cff821c8258a4451aa430656fb7fdcbb299172
Date: Sat, 28 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772243693
