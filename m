Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9A2433AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759009794; cv=none; b=YnT9k7rHFnGZ3xtGpgIE5/wLXvD0AaFNcC/gbG8Mx1MSxfrlPBhXQrpQ+yyjBXyMts0sKzL4M2xJUrktekVauEfwV3KzkKpEJ3C+mjrNUVUDXHg/eWEVnRpthTdQx0l4CJzZ2wZvFGbRjAgqEIhQpmpxZbcDL0BCd8elPv9u1FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759009794; c=relaxed/simple;
	bh=/OLCyOoNl/LexU4YrrmjCJAVAThMtP4YwTBBZKh+Ahg=;
	h=To:Subject:From:Message-Id:Date; b=FX4JsxLGCLhgitDhF3fntT6mIx5QTAbpkpBV8fZXJyH7ZmjmaYFZEEybxtkzAepGHkcoXbfRDmwjkRY3aKkbpFj6VIe0eWbxN9OJGniiXiSZqAEsOwnOdC101/nUkR2Lv9ppkR4hxqfQkWlqEp7gQ1lW0y1TS7Vf5+rIEWGV7aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBzKAwtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBzKAwtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7819C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759009793;
	bh=/OLCyOoNl/LexU4YrrmjCJAVAThMtP4YwTBBZKh+Ahg=;
	h=To:Subject:From:Date:From;
	b=PBzKAwtdc7uNNlZK8sAi/M5xLATojtZWs63Uhe5AcmL3GwQDqeTBJzoAbTqTrhspT
	 9S/KLcAK/SmqdNTjv6OeXTnrEj00KaE/7bFVwFHfPM3M0lLK1Ypdv1fede19F9t9CA
	 e1+6ZFCbVJWvVZ2Vb/MElPxOHqWZr4EXbCVboSFEHcp4vkFb56VKvXJo9fwsGuRO71
	 8jm1TvxRVchSspnPG9DEdaFdiPe9rIljrK+A+YZ3B+JZCVQAmo6ZdZGa6supczBlYZ
	 paQdEdljVsHzROVNGxS/WRAPgqtKuYlg6z5Vb16DxizdDLbM+E5HwtY96sdVlNzRpV
	 BuuqcoDehytCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6FCAC5BD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900979358.17135.5322108495865288760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f5e0489b79c4581b8949b2b172568eed44f5c1a3a7e715c075fe4315d7e142
Date: Sat, 27 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759009793
