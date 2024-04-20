Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975017C79
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713612623; cv=none; b=YqDhgOlEik21feYmjRYJeh0VPZq3BQim1bzSby9iMepxxJ/XMi5GUgrYVuYhtVKjeJj736/2zDQHOuYMvX0z3MKFqWuztpr6PUbDzBYHFiL4FnyKYBJHldM5CUkIwp5WLk1Pcxo2JXgNqWaR8K/khlBiR4PgA54z2OPHM2l/zJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713612623; c=relaxed/simple;
	bh=QC26vS5WSh+Mxyg4oxiJkq712eWggfGxVmOYVfhw7w4=;
	h=To:Subject:From:Message-Id:Date; b=uMMrAbVs3W5wAQbt8wjqkUGSI+/UkXrPRQaZ95WpuTcfDBpbFGPP1wo74mZojY6dmKG7bsH5EKXR/Si1OB4knql6CB/ajD5rL/HTItB4Ai7yXSixcaUGL2VX9Q+vqk0TEqkayeOAVnOoGghDgx5iikRqRVEAftJn0No+WpkrDd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLibuWlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLibuWlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDC0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713612622;
	bh=QC26vS5WSh+Mxyg4oxiJkq712eWggfGxVmOYVfhw7w4=;
	h=To:Subject:From:Date:From;
	b=lLibuWlK3192OI5hnYr968Zpdk6ajrjpfqxW2DO/0R+Lp8fNwhrOI4hfQEHLfDR/A
	 FdkjbkMjaE5q/WFOWIjljNq+W6Iqr3LUbNuJPDSwEg5ByYDkLi96VICe5XNgPEbRv+
	 UoBhWfGVgE49HBXgx0cwP+ejoLTUR0fjblkPh0hxEpGvqc3Ps62wDdEZRTnp+vV2Q3
	 KKZqOhMbj+hL1rFJsWgEjxjNBozsTeMslnZcqZL3Xn+1VZ7+4mxAjfWLxgOGt9bH1W
	 m+C3F/Ao5wq71eSd5+x/eJOoR0cfSEfpoDQ52JaygqR6GcjY2Ke7UlD2fev6ajLozE
	 Tn7cM9XzZB4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17CFC07C79
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361262278.16015.9592373041329838300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b1c454cc225b8dab5750813c9abc9cf5da416fc0b48f8d357cdb4a18b1635a
Date: Sat, 20 Apr 2024 11:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713612622
