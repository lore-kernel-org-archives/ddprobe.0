Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD5531ED93
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774621493; cv=none; b=ob+g6eoAGO6Jr1zxjXYcoKgfwfAm86eMyP0WbMMC0Ia0rmLchL03NoM4B+FwNc0PEffbAAYjUYnhujkrBjnzee1Qhn+P8Os6P83iSLmckPl9pzmWmgSfom2GzqEKrWFwzAc66BoGiTEQIZ/Mbk3wLhXyDhzKnAYL2tumEXKOqEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774621493; c=relaxed/simple;
	bh=JA1tj4C55a+tF6GxUu1Ho+kAEP78waJDVv+LlePTqjA=;
	h=To:Subject:From:Message-Id:Date; b=mF8jdxW7g5e0pGPeQUhZFGjnlwNOvYaJacIt5jPNHfLoIBfZ4PVTQ/qYJQ7vbuHm49CO6ROQmR2xHwxfwhSzZCqsYn6gt2AYjTnST4DBkRYR2jzMjoqqqQlK09ueqF5g7k+JrD2dFrfd5iKgzmTr0MBxBfF2LSAtBEXFJKWX8yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGJ5Kirf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGJ5Kirf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C8DC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774621493;
	bh=JA1tj4C55a+tF6GxUu1Ho+kAEP78waJDVv+LlePTqjA=;
	h=To:Subject:From:Date:From;
	b=SGJ5Kirf+6pie6kvs2KrTJXGI0ji1wZ+AX4MjLmCDK+AmITGeByhV444YgO1m2Gez
	 +AQkG9eUKBQFsSSVEIwAZi1pghN09D+E8me4sSmPdK8IRQenkSgux2mO9QuIvS3Vze
	 WQ5fWt7sQ+GbZdr1wvFdxuhXM9L071mqvPviSDetbuUpu7gkhzzFZgRlWrNHyZ8x0K
	 B0EVPuYmk+cEVVHIlFZIx9ejceGO+EyHMls5bTOU6BwFxATjclWocj6oCA6C0qAo7k
	 LvA9ChB5YjnRmI0BdQETs1eN20ZawmJt7wV85FSEgs0yrCRxVyHLRPY3ai4DCVrKKg
	 MEEAZDlA8gHng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7010AB830
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462149358.5307.3083461809760653359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af360ae65fbc6d6c6d301cc984d2bf16fa5c930f748cd4e1a6f6d01f393869d
Date: Fri, 27 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774621493
