Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6DE1CD00
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720251323; cv=none; b=u1c3QJPYajfs4Sg0cR8kqFZtAA7bs5+FyI/yEa+C+lH6lF6plDD1Be/yceoxTvBe5y8sYlPW1VC4RZU1xGrpR8m6fS63FDX7UVJrmChWRUqIUQLXGqCkvXU5OJIGhgTaGmqdAI1tMXo/oD2xHDrdxRzhNWXbG6iqAd7EZ5hR+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720251323; c=relaxed/simple;
	bh=opvFGTO4/OEA1W4bw01ifOzZXn1g9vCpqZcDSTTeXgA=;
	h=To:Subject:From:Message-Id:Date; b=twnt8m1WR41Ttzw/YT+8iMXGgvN6hV18DfhiHZGJOUD9oHZVrKAVVMytejwO99E05mUP1PzUuneZBj62oOgZYGSUo28RIe0oyFAumZPdxJ/FtR4Mjs9ZLBkgvXUMJwDmvG4CZ5kgHw892sR8evXcsMSUGIo1UUb113NFA3GBXrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1gYaxTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1gYaxTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9761C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720251322;
	bh=opvFGTO4/OEA1W4bw01ifOzZXn1g9vCpqZcDSTTeXgA=;
	h=To:Subject:From:Date:From;
	b=i1gYaxTF+Vh2+H6cU0z0GKcfjroDSMYhZehjOgHZBPAjwqTvadW+wNpsRUYVrpukc
	 rBA0xV1zP4uZ3GZ5gKnJhGAdEkTjAzaK4ZQXEFWqSD1B492KNB+I8R/291jTXu8XOF
	 TwCQaLqRaz5wQ54eH8f26T/QaI8JuWVhs8dgG9B5f/2aH0QYaX9JFds0obRCNWoa6p
	 DVuFb+cOoweVHyyHsAi4hq8Iy7yOK83NBlJQWmXlBugF+IZe0WfzEKkGu5ugV2W5XY
	 mKi55uJfoux0m+KAvcfBex1bHEoEL5Q1OIOoQi50Etvh9iBqN/YBgvf1FiiMLIXt5j
	 OKhcKSZKTH4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB48C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025132276.8803.7003831919611415552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dac470dadd5f88a46a04c8740dc8954393dbe4a6cc90b5cff4d789be5302af
Date: Sat, 06 Jul 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720251322
