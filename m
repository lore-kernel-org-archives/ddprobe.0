Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FAB76C61
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748292594; cv=none; b=C9eJyRV7yA7YVstWMT4klvclZrP0Is1aE2i457UKMO1JCH2FAPqpycCOPmXoLObfd27v94sqWud+7JUpimvU6fayQMUcdZtrK00IA1jxELndK4WvOcjTI4aDcI87YrqyFApb47DLhE0rtk0cqTaa9Jea4QSEZtXF2tjxIenTkBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748292594; c=relaxed/simple;
	bh=sRBsJvbwcvcOv3YwlldnsxIBlYfFAbK9VOFXXHcGKqk=;
	h=To:Subject:From:Message-Id:Date; b=bqoGE1MH7Yu3gDo8SuNlun1WaAwaxkiH0OSE1kNIMvDkyNgaQRK9N0xhb+AcR3ptMvIQ8KhRw8g2srLsXnb2RNEL9ef8aGKVcpmPF1gUs8c/L7CnifaEKek9ZjpqqDNrLs6b+4EkFNQOpFdY9grEwa0U+Nbm0M9QrJ5pyq3y3UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwaguMhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwaguMhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE128C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748292593;
	bh=sRBsJvbwcvcOv3YwlldnsxIBlYfFAbK9VOFXXHcGKqk=;
	h=To:Subject:From:Date:From;
	b=KwaguMhDECExjM+uaxWqOq1DfdvsK53718MNNuj4kByqwSv4RrDMUjENHXcwEbjbl
	 ga4u4qapfddYd+yURLpfZ+/vnO7UjyQiMg16qATCFdUnNOqjAUglon0AYMU8TeuzV6
	 YT9MTlefvSao/gGTf2Oy6TFaXScBFA7zTzLIVkifyJ0emT7aJuw6KKOnMTTvebDrq2
	 liBYBAk/45LxzXg6DMEpa5YG7X4lfTN+3gDRSxZG1URyykyTjjoqhp6X0k4Coxh8fE
	 BkJCOPu+igv9DCL0WZLZZNaJcRL+v77vOSHKllNLetbNUfLHouZM/K2rz79Isf4KI4
	 oEsUcPuAlKozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF33C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829259357.6767.14337231720838700692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea81ffab2f929629f341b393f4ca42ec361a696a7f31ad82ec5283aae9153d4
Date: Mon, 26 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748292593
