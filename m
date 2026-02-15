Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF1245C0B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771182294; cv=none; b=g4PctIZ+8d/PwUfY23O7x0LCpWJDhouTg6xPCZcAhiY936PorMtf3eGZcM5MO2qLZ/MzzDsBaPKTYBxLN2dTccDS8r0p3PcWHxxFT34328caAeKwADyStoP76j3iD3Tj35Pr66jKXxvJjVvLo/AojKu4hNUtmmcjYx4+RYMYrqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771182294; c=relaxed/simple;
	bh=HDTZYtJ41SzBLFevlvH2daW+2/oPaH6Sxmeo22Etn5U=;
	h=To:Subject:From:Message-Id:Date; b=sPm1K8yq7j2HafGHd7MmVfTwXbfcg4pXweeuxcR7sSbZ+2IxKsiowD4u+mkosSyQfbgLWmiYY54lGxtjCZLQ7ul4oEgNOuf8IBWa+3M/n5WD8L6+6h3E0bPBDsLEre5HBKW8UtlNoyxuihX/iE7bWGPIkG2Qzr+0P26KbLOaBEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj+OapqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj+OapqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA591C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771182293;
	bh=HDTZYtJ41SzBLFevlvH2daW+2/oPaH6Sxmeo22Etn5U=;
	h=To:Subject:From:Date:From;
	b=Jj+OapqZnvcmV7SOmNrfV5dM/3QZ7dB2xTBYYUX+TNHUEw+TZknwH5PDufusSJk+X
	 ybo1D5SdKgtyXXvbisqUuZd7luf+9zRyRvOEengHutMhlfIu+jRhU9j9n68K0KK0gP
	 +Bk230qx+NqpIiXdA9yUtGgUNZue738LnY2LFS7WXMvklDG4hVJGHlcLeIDgla5Sjz
	 3yGV0+78H9YhZh++V++M7xY7zIxUQVGtaGD8nJoP86vbgJhOl0YjsoACIaqIfNp8ci
	 TTFYsJiDoUi3HbpwrD7S5ZXbob1+kNHU0QukuCCJo4ZV+4HDZprwPIq9PQI6p7GoqW
	 E3nmnsnq0UT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A625AE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118229363.26975.5350327009853933228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615a162804cee5f211ed3f11fd4cb04f8f8b07193ed0b425368fc1eefbd3ca87
Date: Sun, 15 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771182293
