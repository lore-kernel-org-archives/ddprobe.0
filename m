Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB114A8B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770437034; cv=none; b=eUVM+rU9JVcpBw9KmMZ6mxlxfQaXkF4RAHqvJ4fYAb4XxT/TSDWzwsty/e/7EP4TfPYb+iPJ6wj9FdTmSqpsb2ScSbFiGqVrai4R7KnA99Zu465OAGwe3/9TJ5a5Np6LnxlA/GN2adPfbCSshwlaCrQlskRwEBYHk4vmLufHFHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770437034; c=relaxed/simple;
	bh=oHKVgwzTHHfjZr/5ZbHR5THd3cGSkQw8JbXnkBSGyJk=;
	h=To:Subject:From:Message-Id:Date; b=Aiz/1zwMUYbex7MOdAomfm5osijetoaiX7Bo+VRzV28RTy8RRYYaS3uPpCjqzwkMhUKydNyG3Qh4PhZqEbvjymgKRMIcDkULhcwlWyXOiQYVL6NzWCtoOyUi4JNT+n2rnL1PTnVK72LLBOQt09gz8l0wZnHvfDIRJCaC65Yphbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+HHuzQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+HHuzQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EEBC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770437033;
	bh=oHKVgwzTHHfjZr/5ZbHR5THd3cGSkQw8JbXnkBSGyJk=;
	h=To:Subject:From:Date:From;
	b=q+HHuzQLD2BvT3MLQxUS6GumNekoHNwRESbylpVIytRj8Sf3YMSPdwGRK1cLEOfHc
	 R+5chTtWlxz/1G5/IYPdIxOkk1aoZGerBoIeGwf+SP0VW0sadAS0XYVaQ9E15g26XV
	 w37JOzKNgkNtbCdNCJ5emKqLTAAJM24aJeS9hc+B1Vf9d19nS+KydV9jhrNJgdYLur
	 ZQ+ABoGGIcm5AUvFcorURpdBvdWvJdj9eVIBQBDJxVkrP5cmULLhPIcTSU45j04LxG
	 t3tKDM1FLA7p48tg/PIGqx6ksyQw1acot0gaHj6gnx9ESdkxVqNfeeC9wpYw2j2ldy
	 Utsnq6ctYMmBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2D7EE6B65
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043703359.20557.15103028708520613102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b9190d15a1538b91c842cf8a7ff1459267766a9c82b53a1ade03157bd911c0
Date: Sat, 07 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770437033
