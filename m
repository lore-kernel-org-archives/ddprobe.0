Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189C714A0A4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721723754; cv=none; b=W+PgxcVVdLP8KxVuNGO+/fO97cwEWC68uKojZ8UAu1WVXd6q9audXEwsVc1kqleAneC2HwstdUcDRLDtx5mQyogR6ge1Bp8j61yQgfYHA7zXZkcKVn4CQIzE+dBqdP1HWbbtiimPECPJmR52Azbqxgf7VJeQ+qedtaAsdb6gMT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721723754; c=relaxed/simple;
	bh=M+LfuK8TgEdoKgpjFPFe1cwE5QravW+620iR+x0zymY=;
	h=To:Subject:From:Message-Id:Date; b=JErH1roGfy54V1/O1x0ypBqz5uKtCl4Dr6P9iJ0NwtEJ8ilXXiKPRqNev6MyDrZ7skY4AG8n2VHxI0gv3M0rlLTVRsLrdJbMGU6ra6pwCjuvKz3xculo8rwqKquWVbXOnkjutfZg18xxM8g7UCXZSMXQalWXLAGgwcsueq1s0xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGKqwiZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGKqwiZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1275C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721723753;
	bh=M+LfuK8TgEdoKgpjFPFe1cwE5QravW+620iR+x0zymY=;
	h=To:Subject:From:Date:From;
	b=sGKqwiZjk1Rzr1hz/6BzuaQEoIOOq+Me9KYYkm1AwCwVSOZ4H4FFx0qKSRj1yA0UR
	 tT9RbklOq7iFK1L8D/7WwpgDTyNSoPJ3E80KvnZPMH01L6RoGkhkhZsgFpy1Gda/GS
	 jrwXqoxQVcefEkS7JignfHDiY/+4QS1Soip5RoQWCEzqjtj0bGDtbXFbQPi2GSfi0P
	 ICzuYKeVAMtUVVzZock2Gyd84/ukW0TmLcG5haitt+k0/dVa7SgjaIIvSuRR5J58af
	 E9ckKvzidr7rBTDTq7Ik85C1vwYxXYgkRzEXy0aaOhAZ7A6DudJFjeuzx3nLBNOSXt
	 pICle0MzeQHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5CC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172375358.11192.17217177567608733177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1032b09bf47296f4c6982358392c924bc6df6a295579b3049294c052d155d3
Date: Tue, 23 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721723753
