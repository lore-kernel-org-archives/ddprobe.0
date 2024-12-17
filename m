Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3621E529
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734420354; cv=none; b=TgvgKYqY4zriDuplz+wnniK2a1ZaEvC5z+fzJxULfn5Hw4eV3Vtkx6izmt7K5Wl+1QkCO7Bz/E+hmniQaAt3M7/TvB/jsZ3HW/fX3m6Io4zirZmgqpqTvJfgEukDWLMqRkFIUWVfN/hJi8cRtYQq+32CvmlHSgbfqZiEu6bfIWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734420354; c=relaxed/simple;
	bh=LufOxub18fTOKld4EcecnOI7A+Qo3Vj8lulh94MWksQ=;
	h=To:Subject:From:Message-Id:Date; b=pXve+zkvqtb8+mHrL0L18sbr6VKg3ULcwN7sL8B4P0sw2uIOzOgfN8PORff37DQvjzn4ZikIiXgw55brZGoibbid3MFfVNuNQV29utYcw011w4FSpPYp6bN8oKv54uiPdsDz7AV84KsfWeNe42vND1cnP8E4azR3F6ZtABWpBQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDtAB7bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDtAB7bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC433C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734420353;
	bh=LufOxub18fTOKld4EcecnOI7A+Qo3Vj8lulh94MWksQ=;
	h=To:Subject:From:Date:From;
	b=PDtAB7bMyGd92EEh/XKa3CItUrY6Gmd/EsdOcx3yCNAN8bNmz8I6D24E815LEckLw
	 AWMCcV7xxgxvjmOzCKX/noHhjvXkM/J5n5e9mm8cWzHxNMVYlTq0BbhlVIxAGYRszV
	 rVauo67Jj7d+oGfRgreVurCCTKl3CMqgTximXp8KPnTNxgj8YJH6dABkJuM2lWSL9d
	 k3eUlmKQPk4FbZlDLudSBNpiMnG8JQIDMofuCEyl20ibvg0L6vTWhC4WEoCDEtDcPz
	 O33GU6qd2ndrY5Za3fthNIgf/9M7PRzdyDCxKThOkOPJYEAgeaaA316FBpoYEIGlz9
	 7Ps/a6QnIN1PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F8E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442035361.13842.17406552092920674851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810aeebc0c2bf7fda8038f7616b59f20aa8320b400b88eaba100083ee5cde2ec
Date: Tue, 17 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734420353
