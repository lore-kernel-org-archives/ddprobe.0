Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF5157A6B
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740847134; cv=none; b=gym/cBd4JkdrQXcLaN/M9fk3y9Nn2curcARjVurU63YPIgDSYGPW9nptkhaFcxUPZEVC097rGQ8DS0U3OFNrO+QvQ4VXhTz8c9gT1CMODWLd0XaETgUS/E/HqmLDbE62SlVVL5ZKFmq7vci9MMSL0xToI5FaHTeWWXEXZpJnhKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740847134; c=relaxed/simple;
	bh=x8nK3YYjbZww1uPb90bdFCEJzA/5Wnq72V/y24Y+CRc=;
	h=To:Subject:From:Message-Id:Date; b=TvW2rrMmkLlnVcX3eqwM1nrBVtf3I3BanfMd3e7upkgwfizSxBTCpg+ib+6K8YHR0TJuprvoKAlCQf8rHosxpUEUHURk4VWRbrIX5STgn6OvgObBSpYOrIc2ZF3UUeP+H1EPyGaI70ojDc/FOwKRAAmSIOl6qzE2XPATlf9Ht9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyp2bmvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyp2bmvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B24C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740847133;
	bh=x8nK3YYjbZww1uPb90bdFCEJzA/5Wnq72V/y24Y+CRc=;
	h=To:Subject:From:Date:From;
	b=oyp2bmvVgKEsE3ggewOoo051mILRUEctlC7SvHbqz5ssHmxFHee0rmzjIjz/GCTNC
	 lrZMK2+MkKWbafN8TFv4/d7+tMXwh2jSS3jS+NYGeCmuQtHv/uxD0JSCQfhXz/yux9
	 SqL18CX0kmb62zYtx25UK7DZDRF4Ax5xTbzy/OVpzLn4CtZlhEcFNKTIHzf4Fdh4I7
	 Bnf2hdfzu6RWNaljRQ/BTflzj5yG4CjgmU7cUhOJ+hDX5g8jDTQeGZRn53jCyTFk4c
	 9wR0lHTKR5hEK82nRNsQpcABLa0HmA3QNDofSXs9mM6bEs3kKaBz3UejfaFrXa2zEW
	 Vptz8fpHUCHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF82C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084713362.20507.18277326398621245828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b08f4c23f7999a17530fd22333f44077605b3bbcba2a1bb298fe4a18327d519
Date: Sat, 01 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740847133
