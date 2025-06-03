Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B5E4C98
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748968794; cv=none; b=c7uvc0l1GpWiT6OrgfzqSFLUr7b7gudrR1ufKhfimyAzUq4CqP4okrcF3UORBK1rsapCmKdTJVnYhtSOFx0secHfmHzsFi/jqMbhlbvmrULMOt4DWupiW6JahLvmOJxU/okVm/yzMXnKwVsUmF1sQgMhCYoNgY759+trnGXD1o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748968794; c=relaxed/simple;
	bh=/6UY4Ods3WdQfhgffPI04ATATK79pXy+pnaneVKPONU=;
	h=To:Subject:From:Message-Id:Date; b=eJH+ym4c9lxWTOQV3lxXN9awOGa5UhO8UzY6eYTgN4tfGSAu9dAFwKVqWMiCjMNYHpF3Yw3loFYlvXnDi0h+lwl7bmfPFHRANC80tLC79o+8IjbPgCObv73e347om6GAB2DOkob/gN2PTRch9KHhCT9ldjclWXBgsyIUE0rStic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7pA5E5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7pA5E5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0691C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748968793;
	bh=/6UY4Ods3WdQfhgffPI04ATATK79pXy+pnaneVKPONU=;
	h=To:Subject:From:Date:From;
	b=r7pA5E5cyI3/xUQqzJvbYE2A2YfGUAjvDK7+9MGeDJvUkcTgPqsFupYAd9aZtEof4
	 hbvbhCRe0at01YO5lXpYTg0g33kk7ZN2lb0sRWbCl9z4oPJy/4rN3B21K81xBwi0qr
	 c2WrtXHT4aVCUewv9LV9otHOruhJdKerghFZ3ihF9hLZqBtFkXCeqCdjgO21asS+GQ
	 a4khlZwTPPS0Ct30Ci12JrZijZ07Y+LfaNeoBd10E+4Nd++jB3PeSDiASy47J5cAS/
	 Bj+dl1peoUvOvcN1NLvQ6oYzhcnXb6V8onh7fGgklnWH5JFS4eOQFufZfrcdAjQA54
	 nQNX6+Z+CG/YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A350FC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896879362.28203.13343784921836133489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42e64c2b2c91959ee8ebcff3c33a350276fbb222fb1774eafbdd0fd1c961cfc
Date: Tue, 03 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748968793
