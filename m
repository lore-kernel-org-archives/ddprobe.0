Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA9138E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719985523; cv=none; b=K0BMG+jplrH3zOu++aJefXwSy8iVlwyqACuzqokRmrP5J22wdm/i0/qC9iVAo/APX2TNp5qUplxYN+vRHbK7cATAfWwAQfWFa+aMLeRh9xRBPPYIaEh7Ub4zz8/SDVLq8kbfjqJ0LjumC3q1B0WvUkCQTKmtOVTSXSiZhh/AnlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719985523; c=relaxed/simple;
	bh=P7V7r5aMVn6pBlzyt4BF5chf4ZIB3H1lAO2KfKiUt5I=;
	h=To:Subject:From:Message-Id:Date; b=MeDAktH1ylXvB3fwXvqodTfVsFl4tYbTGfefrvqhz6H+4FPgnri/Ybwlipk1EG+e6LL5URBOOq7JpjwQF75VhhU4sq6VB5KxsXaB9cVzoOC/CGjX+YzLJUyn6dwJxXopEsEUsP7zj3VcyV+zq/2jWcXemnZtFi1GBleY08Ho0Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDOipUqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDOipUqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7950C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719985522;
	bh=P7V7r5aMVn6pBlzyt4BF5chf4ZIB3H1lAO2KfKiUt5I=;
	h=To:Subject:From:Date:From;
	b=CDOipUqb8HotG7ELVbu34f5IQVCQcxaTrN7nnbdmSjBGBgJ/M5H4oY04zWH3HPmdZ
	 bTAUF1LQ+dzqT/yPLmb0g7TBH8Fc18G0YUGVpoi5PlDty3g/x3F4F3kz+RzZHwNrav
	 EPiPjUCJWnlHrXWyMYU+c3xlmNlz9uviYZ4f7nj8G3ySQJoTjT8HaG0NG/b+MLeiRu
	 CrHgIZLGf5xtRapgUXCc9tJaF8+jKBuu9xGXaVMRHrewDuTAVkUTndwQZfoG35Qh1V
	 xWwgHWootiXMUoGuN3YFfCjZG9fcksw15XMHHI8XgpaZ9rKOJ0sPEpQAzjPRZ32c3F
	 MqK40iRjSItaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C536DC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998552276.11033.10852591535778629579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aeb0e8454aedaac8a92d7088c69dc0f27c66831872045815b0a832f803cae72
Date: Wed, 03 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719985522
