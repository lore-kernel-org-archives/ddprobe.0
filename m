Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5A03308A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720885823; cv=none; b=seXWqMtEmTbgcRNwm//HdX18rTrkwoDZS04Up7JQ4ZOd1MAyCLzXHLcpp/NnNG1/HEOqcJ9SurneaEf17rIW/lTFNrQhT3fbByq4ZI3VTpIeVONxwrTXfAQcs4ND8p6XR8zpPnGuUWFc+kbDYyQdqlYmrcsd8wf3VQWMe1BKWN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720885823; c=relaxed/simple;
	bh=7YbNCPtI1fKl/LXIRaJ3SNAdOqPEbeWtRZUahYhrCUw=;
	h=To:Subject:From:Message-Id:Date; b=PgsfT6X1+khCO699GT+yAJ6R1dT//1DBcqMsh7/14GMYtepwpYak0rhSCwy4Du5JCf+mzc5Mz6i4mWXisnhYWhsFB770r083D/S9oC9UMRQoZ7ACZljXjyfyq7Mde/g72dLcCi+kGnc56ZSnov0A/y88FZQM0oF6ImC2CQvHcvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o59XmjjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o59XmjjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8318C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720885822;
	bh=7YbNCPtI1fKl/LXIRaJ3SNAdOqPEbeWtRZUahYhrCUw=;
	h=To:Subject:From:Date:From;
	b=o59XmjjOXMznd8a5G+2atghwugDR5oLm/5wo3Yf2rsbjup7WZHlqxveyK+bPC7aiG
	 n66ViqonV5UJ+piNzvYLvvAAVw61IU9cbyGf2JeRNNJVqtMNCKCFlVle/Ii/sh4eyt
	 M9ua2UrHuDllslK3qfi9sik6mBvRUCQIco/QDZPytLht7SLO0rnfL3gOgIxP6RfGPF
	 hcfqCo8S1GX3ptj/pqFmNNox6Ke0L7Sc/xN9T3pmc93BSulVk0xTJV3CVF6JNOhZol
	 xlylSLWd1VLHzJbCZ+OzqlnIJM2BY36GFrpCt3Cub5tUNwUQu/nDlp+0Ek15HqQfPY
	 J0uDZn6jsiJXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D40CEC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088582279.4247.3081066059467042612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f535c4558ea89daeca640117317c86828b8ab733d7da557bf8681aa135367e96
Date: Sat, 13 Jul 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720885822
