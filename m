Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0CC385D84
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779483154; cv=none; b=utAJUNlvZ4X4Lry8HWegGRH91zpTHUIBZMcY07Y36KZtTu89J/obhRhTqT68c57gFlu4itOZlKIMjhfpspPfFGWjZGy3uYDDRZ2u5iJmngpgOfrgdwoKSPKvVm20EG3XuPh7G9+utbP02Qiy6e2s0odz1EB5oxImIMBnMemMD60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779483154; c=relaxed/simple;
	bh=yVjhfo/G6kZY5nFbFR82I3TPpgUaotaBG/yx/btIe0c=;
	h=To:Subject:From:Message-Id:Date; b=jXmQfWQBOHVfav9HtQvZFkxlNd92M7NhpYKU3LdhD+LwhDSX4HfIO4/DfMiCcYhpxYSp5+SAq/Js4RX8ExEMfql7sisV9R05eXT8KiHEWNkBOis0crp+rVCm7gL87JMhNZp/35I2eLDxZGLlAngHfetHDWFWkM/bcI2OeDaRC28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW3W4iBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW3W4iBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B83C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779483153;
	bh=yVjhfo/G6kZY5nFbFR82I3TPpgUaotaBG/yx/btIe0c=;
	h=To:Subject:From:Date:From;
	b=fW3W4iBYrN8OQ81OIow3V4rxPvqVHrHjNm3BibqfTo5wae+QLJfU3JpO+7uInokmL
	 N72UHlNAkI2TyBGpxQnrDMdK7FzFWR1bCWY9PF1nqz7vYciRqqDpebn1JAacIqAEV/
	 0HL6jEF1CTl2UWks5VvWh+iSXVxDiaGLrVzI6L3tACDGEw7vnCm6S5tRkohGSCf834
	 1zTgwlEuhfDzMrgJnQIQ7mIxKXY7QfZv8j+gT8nLw+vIKwOtdnHUHqUDRtrKvFP7Fr
	 vXpalvAIdge3HrfmC6KOmGFF8ul9DtDWVX3oI2JTYMaNHEmysuOWAzUc+n5m+5WmHl
	 Qle47O/nACKwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC6CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948315369.11419.17189138294737373991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5222a6e21b8e03b9acadb2c6adf4d90383ca43121162f2434944af97ced47b1b
Date: Fri, 22 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779483153
