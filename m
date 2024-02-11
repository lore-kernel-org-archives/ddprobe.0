Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177F045943
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707639497; cv=none; b=OSAq7WEXYeD3EqDEXwCKp47GeLk/UCEf57eVvgnU1yWItwzfTR65O+0GjqgSzPH02D0wMud6WxWRR0xxi4rbG4wJfc55fLXun5/9b7T10OW/cUcZiWJPZrFmGk6WeCOS81VFTHt2OnJUbdWlK0qrJc/ZnixHlTRAymywzuqgS/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707639497; c=relaxed/simple;
	bh=dCMoXGsM0gepofclqw1/XVmm8be4LJ8aTQ7t8Mg9S6E=;
	h=To:Subject:From:Message-Id:Date; b=a9FVmNgME7dEWFEfCH9++xe1uHLSezNyFjgC0grEoiKLGs4mIy+UgbjNnyNbXHBdnzoIsUbX3PljiitrrLzR7E5h8+nHbZLakwpt+EVeECQ0bWtaUZHEogDg7jgTo6BaH7/M7+WEVOsgEnXfKpuN3Iip4UoP8E9WpKlpNRnVK/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS/fCs+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS/fCs+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F98EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707639496;
	bh=dCMoXGsM0gepofclqw1/XVmm8be4LJ8aTQ7t8Mg9S6E=;
	h=To:Subject:From:Date:From;
	b=CS/fCs+8oWBFPvzINBbgNOvxo1lVaxR8gWWkpwxvIQThhDLZNb8gsKoTXL6uqP9Oc
	 vy+I1UaiMxwLfTyB5zUcN/aAffCOMSeUEkv9/sd+/tUiEV/ISLMBJ8FCeA5s0/Fi/t
	 feQ5Txw6knSZPrlbc9YDrgEC3v43zceVsuAOpD3JqKrQqDO0h2gpeK7+xUu7I4NJJN
	 zXk8n04hhFvhkyutMQ5Fbp8GuMKJ0/PuIOOFnq6KAaVvHUTVvqxhd3mqD+klWH25Kl
	 yEK0wzaoFXU5tCBIa6NE2Yhf9KWb4CV7+zoYRo7ZER5LmggF6wlvnYwHbk5URoq/J5
	 fduQwtseoZahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A2FC4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763949637.23515.4453420279296219702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5322bd900e0ba6db901f5c60451cba43bfbf4a4f68e1b96d0facbfcaac2b65
Date: Sun, 11 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707639496
