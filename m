Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E853328FA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774174494; cv=none; b=fpsCKeolXp+uaU6c8zISEgFeGNHzlUg9ITvfMRs6tn1rmc8WgRYSk37q3ytIixiXsild3BcsYAk8IykXuZMf8bsbplWbY5nzFfbgpfMk/gPLzaEH7BTai7wE8kjtyBbeDSDOAAVS1uUQ4lniXtJQVP41HT9MnaT9j8njw7RGpP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774174494; c=relaxed/simple;
	bh=cgYeL11gM3D2rSW52ScjFJmsUwXTb2XtdcBOO64qgfs=;
	h=To:Subject:From:Message-Id:Date; b=j6md66yQU5IRsRdl5XYoZnKtHposlgwEp/YsKeN0o+sGLlkOf9CkZY1hgCJoB8OLnnAxt8aPWxE7p78KtWpyHi5UkisxlRk01XFFUvUPbA/4Pl9XlzvzeyMOEjwayPS2WoYuF4TgTUr652xjXZ12941uNx0UGgmmVLIvgYvURS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryvDWpJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryvDWpJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB70C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774174493;
	bh=cgYeL11gM3D2rSW52ScjFJmsUwXTb2XtdcBOO64qgfs=;
	h=To:Subject:From:Date:From;
	b=ryvDWpJiJLunO7UEzZJTwPe5/c1UPMqfKAahnv7PEgtxui8lFkCyzwtBdrK5bFj7L
	 RjcpkVyCbWkWdDnT4jDjyvrSPmUjtlwo+Jl7VLlzx7jjkLK2rrzFR29/FQphQVLZhk
	 EysT/NswCH9cJvX7owYLRNR8PsNSLA5rYEuz3/s75fJeKpw1cNsmhf7mLq9hQVW0pF
	 MHfIX+rUi95lJ3JO+OJGmfW+s/0SlXegz0R4vK5km+nDx0zxUyJbDqBpVDq8c4I8of
	 VuhVwfHOi3EA/OnCy+ZAJ2sHbuRhlPifxVoutwuOoLv071l6unsE/n1g4hXBPZIEbZ
	 kv/uoQpJFJJVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B10FC72B8
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417449358.22780.12404555034195981477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670cbf26ad24acc552b9825ac6b4c564ca7c51de4aafbb7681ccbfcdbea813c8
Date: Sun, 22 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774174493
