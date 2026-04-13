Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB9F285C8B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776063454; cv=none; b=Y1P2+YkfhzMR0yePTyXX9Xuwj3/VZGw2JRV85yJYOmbnnvoKUqQ/uyR8L8LfMKNXtUGnuyfvHWn8Us6qDlZskkJXxjjKDkEkSlvPLqjUq9zd1655t1jcA5FA7xV17ryuL+LEFcB4Lv2XfTgFLD6+tHZz0mpS9Iekv12anDBT/6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776063454; c=relaxed/simple;
	bh=MtsDabFXVtAviwnkF6eUrx86yF0/N5HsR3j0dAdPvqU=;
	h=To:Subject:From:Message-Id:Date; b=QaopiwN7Ho+DyUq7Z3qPiJ5/qaFwdZ7BjxNNU3GIonoZqfEphnDoRieBp/Cnuf4hNqOjlLU+/SdyHlWFEbU6EL9Md2zm1fsLiypdk3nFkUenHpFW7RfU5y7AY3FFwjzanekhtnC+mBvrzsRb6xPQTLunN6vH0cLoCWq5sKvSslo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/0s+4J5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/0s+4J5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0CFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776063453;
	bh=MtsDabFXVtAviwnkF6eUrx86yF0/N5HsR3j0dAdPvqU=;
	h=To:Subject:From:Date:From;
	b=q/0s+4J5IMoDxgl3DnqkqjuP1f/OCohoHYCizg1x289TpSI/VsIRI2oRazT87CjxL
	 cSLe+SUCOMsEV3/W03/eM7L0dXHzWFQ6ceXhMNaYrU2b1840uPCZUiZBBGa52XclVn
	 aEd0iSo7ru/SjamSgjSfx+kSEJDUXYLIdnAuYs6SjROdbCtVFuV29xqrAy2mpO4eab
	 eVEBMFNd7xVWqD7DvbqhhBVunlrbGmjYpOHb21u16Ld9eG9ucKpixtjtQUSwoyiJzi
	 v2IuCXeL37wAmXnPpyE7FE0E3C+evqVizOV+jbWrjexqbkBFt/1jzqoYxuiR52YZNp
	 zDsrCYfExzpgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF822EBFD05
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606345368.16751.12358042120668674194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c345739920bd9e44d13f05b56b7505065377a2e023e9694ff08bf3c9dc4fb0
Date: Mon, 13 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776063453
