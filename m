Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F882F5B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758391794; cv=none; b=elas07qpNrpzC9CaEaNywgH/pZDGJVAACk1pn5+cxFC69GcHATQsQdq0ITvzbUXk9b0wyXy0sy43o/SF2WDdDMe20EXZRJSSYEGKCFa7mkxwY4FhKdEKT0qHgToy5/FEESwIFuZLqdzJqRL0ZpevpHrTLSucEeoIAlwmOFodO8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758391794; c=relaxed/simple;
	bh=kzC0I9AFQ7ru0pp58znZTWVwDcQLRzRqjWAhGj4+Smc=;
	h=To:Subject:From:Message-Id:Date; b=JfwLP7AoKod6BHtHdGWVpM0fxwJ2j38JML8DWYjej+7pYn2ymVoce7y4F1GRBFzAlAFIT7Th/yfzTUd7n7gPWWQAuEBqNiSL/0JEhFMSwao66tS4tJi6vN84Mig8+x7Pjj5bCuZZSZ1b8TlMtNMaeC/JsUG3ekT0zF2NJbIhHKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crkB8L4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crkB8L4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758391793;
	bh=kzC0I9AFQ7ru0pp58znZTWVwDcQLRzRqjWAhGj4+Smc=;
	h=To:Subject:From:Date:From;
	b=crkB8L4yr+CkSHdJMzFj+BuJVnkDpvLnju9uY4B0YSOrp9qLrnD8NNnaqnIGdK6PH
	 kVrYHaF3DDQHwoWirRUSIHffvElLJ3VksPJ+0cp9iNtbTYpahnTXfH8nvJpfCRA/W7
	 /fAb+SaxPhD41TdSV1sGvweyquh+gIzm4wnr5M/BYwpgtSfXF5ZuHP7+ffvdS31PXu
	 /OhfMfyBXVV4e89Tcbfdcj7lTywuVKreDDGvxx9qPHTMkI2tKUWEgBZsC69nmGJVSW
	 FsxQBsGIoBHqKdBk+hcr9GEf/TJU1KHwBFiUT485S8NSiV2drf0u3rja08f5h6HvsE
	 RErOiJag9ZfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E5CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839179358.17435.15304744531948652835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915ee227e9f0d41c6c9df74730eda77e0a20a6bc61f77fd761ea0998060454f1
Date: Sat, 20 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758391793
