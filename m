Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9385476C4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791987634; cv=none; b=Iy5pBZH3KYdRQLakEMdsaPa860IDAhydxak/83EJRunA1HhPJHqV7avORH/PKKxDwJ61NtOGN1njKMLgQvddYWmo8zXTe9wS7Wt0oW5icu/D85JlZnYeawUVf5LveEoU+LACe2yCpR37eCUd+S8NtWR11OluljYxwfrSeMAS6wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791987634; c=relaxed/simple;
	bh=KDxaNpcfU9ZR7YK2rPQeAZ/BbaEmW9GB73Ang0E3o3k=;
	h=To:Subject:From:Message-Id:Date; b=k6BMlLBJ5iBftr0zKXiAKqdy6TuyJ7cUlT6DrwG7RIzpoeS1SgOHGuweT23xdzlsVDeWwNxdGkQW2zEh8COJlTd9YoBsggdiu2tIXmTOTEJANcXHKiIvC0Z6ze9Fv211mz6q5czgK5nnBZkVbe0bj1WbZbmEqCc19B511F5i30k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk9DbvyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk9DbvyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D409EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791987633;
	bh=KDxaNpcfU9ZR7YK2rPQeAZ/BbaEmW9GB73Ang0E3o3k=;
	h=To:Subject:From:Date:From;
	b=Dk9DbvyMP2XLQH9Myvd9jejn5z2lM7r4SwzWSOzmfs5tcybkJ8XXBdicghpzAZDJP
	 hpVv4GC8fZx8Rol1jIYL1/UIMVsADz9AyXKQtrddmW4IP8XwC22qyD+iofX83EgRYz
	 Xy+JuaAGYOYlOnAsc8RYfFrmg2MiAsih7/14U7UTaHvF+SanHpLGv+PJtkWu0QYUMU
	 azhK9jSGNYAgkKCuE2z1P1XLoUdAjxmQ8EEQ4UTgfp009ml7FGALzlYU04S9JpVRue
	 EIlSm8Vqz+gUYOiQ34qxqpPhyYs0CDVflh8N3VJKXDaEBSwLXoOuQ2D/HDM5yE4MKP
	 Eni9Bgf0eQ8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD74CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198763371.16142.1979320882662950042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6243b22b44d409d20a0e9ee41f00a0261538af27720378d915ac9bd5fcd5d80
Date: Wed, 14 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791987633
